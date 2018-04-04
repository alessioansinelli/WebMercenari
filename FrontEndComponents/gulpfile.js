"use strict";

var gulp = require('gulp');
var autoprefixer = require('gulp-autoprefixer');
var browserify = require('browserify');
var babelify = require('babelify');
var source = require('vinyl-source-stream')
var babel = require('gulp-babel');
var browserSync = require('browser-sync').create();
var concat = require('gulp-concat');
var eslint = require('gulp-eslint');
var newer = require('gulp-newer');
var uglify = require('gulp-uglify');
var rename = require('gulp-rename');
var sass = require('gulp-sass');
var maps = require('gulp-sourcemaps');
var util = require('gulp-util');
var del = require('del');
var htmlreplace = require('gulp-html-replace');
var cssmin = require('gulp-cssmin');

var config = {
    production: !!util.env.production
};
var jsFiles = {
    vendor: [
        'assets/js/src/vendor/jquery-3.3.1.min.js',
        'assets/js/src/vendor/popper.min.js',
        'assets/js/src/vendor/bootstrap.min.js'
    ],
    sourceJs: [
        'assets/js/src/app/**/*.js'
    ],
    sourceJsx: [
        'assets/js/src/app/**/*.jsx'
    ]
};

var bundler = browserify('assets/js/src/app/index.jsx', {
    extensions: ['.js', '.jsx'],
    debug: true
});

// Babel transform
bundler.transform(babelify.configure({
    presets: ["env", "react"]
}));


// Lint JS/JSX files
gulp.task('eslint', function () {
    return gulp.src(jsFiles.sourceJsx)
        .pipe(eslint(".eslintrc"))
        .pipe(eslint.format())
        .pipe(eslint.failAfterError());
});

// Copy assets/js/vendor/* to assets/js
gulp.task('copy-js-vendor', function () {
    return gulp
        .src([
            jsFiles.vendor
        ])
        .pipe(gulp.dest('assets/js'));
});

gulp.task("concatScripts", ['eslint'], function () {
    return bundler.bundle()
        .on('error', function (err) {
            console.log("=====");
            console.error(err.toString());
            console.log("=====");
            this.emit("end");
        })
        .pipe(source('app.js'))
        .pipe(gulp.dest('assets/temp/js'));
});

gulp.task("minifyScripts", ["concatScripts"], function () {
    return gulp.src("assets/temp/js/app.js")
        .pipe(config.production ? uglify() : util.noop())
        //.on('error', function (err) { console.log(err.toString()) })
        .pipe(rename('app.min.js'))
        .pipe(gulp.dest('dist/assets/js'));
});

gulp.task('compileSass', function () {
    return gulp.src("assets/css/main.scss")
        .pipe(maps.init())
        .pipe(sass().on('error', sass.logError))
        .pipe(autoprefixer())
        .pipe(maps.write('./'))
        .pipe(gulp.dest('assets/temp/css'))
        .pipe(browserSync.stream());
});

gulp.task("minifyCss", ["compileSass"], function () {
    return gulp.src("assets/temp/css/main.css")
        .pipe(cssmin())
        .pipe(rename('main.min.css'))
        .pipe(gulp.dest('dist/assets/css'))
        .pipe(gulp.dest('../Sito/css'));
});

gulp.task('watchFiles',
    function() {
        gulp.watch('assets/css/**/*.scss', ['minifyCss']);
        gulp.watch('assets/js/src/app/**/*.{js,jsx}', ['minifyScripts']);
    });

gulp.task('watchCss',
    function () {
        gulp.watch('assets/css/**/*.scss', ['minifyCss']);
});

// gulp.task('browser-sync', function () {
//     browserSync.init({
//         server: {
//             baseDir: "./"
//         }
//     });
// });

gulp.task('clean', function () {
    del(['dist']);
});

gulp.task('renameSources', function () {
    return htmlreplace({
        'js': 'assets/js/main.min.js',
        'css': 'assets/css/main.min.css'
    })
        .pipe(gulp.dest('dist/'));
});

//use gulp --production to use production behavior
gulp.task("build", ['minifyScripts', 'minifyCss'], function () {
    return gulp.src(['*.html', '*.php', 'favicon.ico',
        "assets/img/**", "assets/fonts/**"], { base: './' })
        .pipe(gulp.dest('dist'));
});

gulp.task('serve', ['default', 'watchFiles'], function () {
    browserSync.init({
        server: {
            baseDir: "dist",
            index: "index.html"
        }
    });

    gulp.watch(['*.html']).on('change', browserSync.reload);
});

gulp.task("default", ["clean", 'build'], function () {
    gulp.start('renameSources');
});
