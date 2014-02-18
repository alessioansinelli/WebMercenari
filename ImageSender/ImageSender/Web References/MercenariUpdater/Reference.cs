﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.530
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

// 
// This source code was auto-generated by Microsoft.VSDesigner, Version 4.0.30319.530.
// 
#pragma warning disable 1591

namespace ImageSender.MercenariUpdater {
    using System;
    using System.Web.Services;
    using System.Diagnostics;
    using System.Web.Services.Protocols;
    using System.ComponentModel;
    using System.Xml.Serialization;
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Web.Services.WebServiceBindingAttribute(Name="BeServiceSoap", Namespace="http://tempuri.org/")]
    [System.Xml.Serialization.XmlIncludeAttribute(typeof(OggettoBase))]
    public partial class BeService : System.Web.Services.Protocols.SoapHttpClientProtocol {
        
        private System.Threading.SendOrPostCallback HelloWorldOperationCompleted;
        
        private System.Threading.SendOrPostCallback PhotoGalleryListOperationCompleted;
        
        private System.Threading.SendOrPostCallback SaveImageOperationCompleted;
        
        private bool useDefaultCredentialsSetExplicitly;
        
        /// <remarks/>
        public BeService() {
            this.Url = global::ImageSender.Properties.Settings.Default.ImageSender_MercenariUpdater_BeService;
            if ((this.IsLocalFileSystemWebService(this.Url) == true)) {
                this.UseDefaultCredentials = true;
                this.useDefaultCredentialsSetExplicitly = false;
            }
            else {
                this.useDefaultCredentialsSetExplicitly = true;
            }
        }
        
        public new string Url {
            get {
                return base.Url;
            }
            set {
                if ((((this.IsLocalFileSystemWebService(base.Url) == true) 
                            && (this.useDefaultCredentialsSetExplicitly == false)) 
                            && (this.IsLocalFileSystemWebService(value) == false))) {
                    base.UseDefaultCredentials = false;
                }
                base.Url = value;
            }
        }
        
        public new bool UseDefaultCredentials {
            get {
                return base.UseDefaultCredentials;
            }
            set {
                base.UseDefaultCredentials = value;
                this.useDefaultCredentialsSetExplicitly = true;
            }
        }
        
        /// <remarks/>
        public event HelloWorldCompletedEventHandler HelloWorldCompleted;
        
        /// <remarks/>
        public event PhotoGalleryListCompletedEventHandler PhotoGalleryListCompleted;
        
        /// <remarks/>
        public event SaveImageCompletedEventHandler SaveImageCompleted;
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/HelloWorld", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public string HelloWorld() {
            object[] results = this.Invoke("HelloWorld", new object[0]);
            return ((string)(results[0]));
        }
        
        /// <remarks/>
        public void HelloWorldAsync() {
            this.HelloWorldAsync(null);
        }
        
        /// <remarks/>
        public void HelloWorldAsync(object userState) {
            if ((this.HelloWorldOperationCompleted == null)) {
                this.HelloWorldOperationCompleted = new System.Threading.SendOrPostCallback(this.OnHelloWorldOperationCompleted);
            }
            this.InvokeAsync("HelloWorld", new object[0], this.HelloWorldOperationCompleted, userState);
        }
        
        private void OnHelloWorldOperationCompleted(object arg) {
            if ((this.HelloWorldCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.HelloWorldCompleted(this, new HelloWorldCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/PhotoGalleryList", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public Oggetto[] PhotoGalleryList(string NomeUtente, string Password) {
            object[] results = this.Invoke("PhotoGalleryList", new object[] {
                        NomeUtente,
                        Password});
            return ((Oggetto[])(results[0]));
        }
        
        /// <remarks/>
        public void PhotoGalleryListAsync(string NomeUtente, string Password) {
            this.PhotoGalleryListAsync(NomeUtente, Password, null);
        }
        
        /// <remarks/>
        public void PhotoGalleryListAsync(string NomeUtente, string Password, object userState) {
            if ((this.PhotoGalleryListOperationCompleted == null)) {
                this.PhotoGalleryListOperationCompleted = new System.Threading.SendOrPostCallback(this.OnPhotoGalleryListOperationCompleted);
            }
            this.InvokeAsync("PhotoGalleryList", new object[] {
                        NomeUtente,
                        Password}, this.PhotoGalleryListOperationCompleted, userState);
        }
        
        private void OnPhotoGalleryListOperationCompleted(object arg) {
            if ((this.PhotoGalleryListCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.PhotoGalleryListCompleted(this, new PhotoGalleryListCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/SaveImage", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public bool SaveImage(string FileName, [System.Xml.Serialization.XmlElementAttribute(DataType="base64Binary")] byte[] oImage, int GalleryID) {
            object[] results = this.Invoke("SaveImage", new object[] {
                        FileName,
                        oImage,
                        GalleryID});
            return ((bool)(results[0]));
        }
        
        /// <remarks/>
        public void SaveImageAsync(string FileName, byte[] oImage, int GalleryID) {
            this.SaveImageAsync(FileName, oImage, GalleryID, null);
        }
        
        /// <remarks/>
        public void SaveImageAsync(string FileName, byte[] oImage, int GalleryID, object userState) {
            if ((this.SaveImageOperationCompleted == null)) {
                this.SaveImageOperationCompleted = new System.Threading.SendOrPostCallback(this.OnSaveImageOperationCompleted);
            }
            this.InvokeAsync("SaveImage", new object[] {
                        FileName,
                        oImage,
                        GalleryID}, this.SaveImageOperationCompleted, userState);
        }
        
        private void OnSaveImageOperationCompleted(object arg) {
            if ((this.SaveImageCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.SaveImageCompleted(this, new SaveImageCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        public new void CancelAsync(object userState) {
            base.CancelAsync(userState);
        }
        
        private bool IsLocalFileSystemWebService(string url) {
            if (((url == null) 
                        || (url == string.Empty))) {
                return false;
            }
            System.Uri wsUri = new System.Uri(url);
            if (((wsUri.Port >= 1024) 
                        && (string.Compare(wsUri.Host, "localHost", System.StringComparison.OrdinalIgnoreCase) == 0))) {
                return true;
            }
            return false;
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.450")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://tempuri.org/")]
    public partial class Oggetto : OggettoBase {
        
        private OggettoFoto[] fotoField;
        
        /// <remarks/>
        public OggettoFoto[] Foto {
            get {
                return this.fotoField;
            }
            set {
                this.fotoField = value;
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.450")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://tempuri.org/")]
    public partial class OggettoFoto {
        
        private int idField;
        
        private string titoloField;
        
        private string sottoTitoloField;
        
        private string percorsoField;
        
        private System.DateTime dataInserimentoField;
        
        private int parentObjectIDField;
        
        private int numOrderField;
        
        private string estensioneField;
        
        /// <remarks/>
        public int ID {
            get {
                return this.idField;
            }
            set {
                this.idField = value;
            }
        }
        
        /// <remarks/>
        public string Titolo {
            get {
                return this.titoloField;
            }
            set {
                this.titoloField = value;
            }
        }
        
        /// <remarks/>
        public string SottoTitolo {
            get {
                return this.sottoTitoloField;
            }
            set {
                this.sottoTitoloField = value;
            }
        }
        
        /// <remarks/>
        public string Percorso {
            get {
                return this.percorsoField;
            }
            set {
                this.percorsoField = value;
            }
        }
        
        /// <remarks/>
        public System.DateTime DataInserimento {
            get {
                return this.dataInserimentoField;
            }
            set {
                this.dataInserimentoField = value;
            }
        }
        
        /// <remarks/>
        public int ParentObjectID {
            get {
                return this.parentObjectIDField;
            }
            set {
                this.parentObjectIDField = value;
            }
        }
        
        /// <remarks/>
        public int NumOrder {
            get {
                return this.numOrderField;
            }
            set {
                this.numOrderField = value;
            }
        }
        
        /// <remarks/>
        public string Estensione {
            get {
                return this.estensioneField;
            }
            set {
                this.estensioneField = value;
            }
        }
    }
    
    /// <remarks/>
    [System.Xml.Serialization.XmlIncludeAttribute(typeof(Oggetto))]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.450")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://tempuri.org/")]
    public partial class OggettoBase {
        
        private int idField;
        
        private string titoloField;
        
        private string sottoTitoloField;
        
        private string testoField;
        
        private System.DateTime dataInserimentoField;
        
        private System.DateTime dataModificaField;
        
        private int idUtenteField;
        
        private TipoOggetto tipoOggettoField;
        
        private string pathFileOggettoField;
        
        private string nomeFileOggettoField;
        
        private int numOrderField;
        
        /// <remarks/>
        public int ID {
            get {
                return this.idField;
            }
            set {
                this.idField = value;
            }
        }
        
        /// <remarks/>
        public string Titolo {
            get {
                return this.titoloField;
            }
            set {
                this.titoloField = value;
            }
        }
        
        /// <remarks/>
        public string SottoTitolo {
            get {
                return this.sottoTitoloField;
            }
            set {
                this.sottoTitoloField = value;
            }
        }
        
        /// <remarks/>
        public string Testo {
            get {
                return this.testoField;
            }
            set {
                this.testoField = value;
            }
        }
        
        /// <remarks/>
        public System.DateTime DataInserimento {
            get {
                return this.dataInserimentoField;
            }
            set {
                this.dataInserimentoField = value;
            }
        }
        
        /// <remarks/>
        public System.DateTime DataModifica {
            get {
                return this.dataModificaField;
            }
            set {
                this.dataModificaField = value;
            }
        }
        
        /// <remarks/>
        public int IdUtente {
            get {
                return this.idUtenteField;
            }
            set {
                this.idUtenteField = value;
            }
        }
        
        /// <remarks/>
        public TipoOggetto TipoOggetto {
            get {
                return this.tipoOggettoField;
            }
            set {
                this.tipoOggettoField = value;
            }
        }
        
        /// <remarks/>
        public string PathFileOggetto {
            get {
                return this.pathFileOggettoField;
            }
            set {
                this.pathFileOggettoField = value;
            }
        }
        
        /// <remarks/>
        public string NomeFileOggetto {
            get {
                return this.nomeFileOggettoField;
            }
            set {
                this.nomeFileOggettoField = value;
            }
        }
        
        /// <remarks/>
        public int NumOrder {
            get {
                return this.numOrderField;
            }
            set {
                this.numOrderField = value;
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.450")]
    [System.SerializableAttribute()]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://tempuri.org/")]
    public enum TipoOggetto {
        
        /// <remarks/>
        Homepage,
        
        /// <remarks/>
        News,
        
        /// <remarks/>
        Photogallery,
        
        /// <remarks/>
        Eventi,
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    public delegate void HelloWorldCompletedEventHandler(object sender, HelloWorldCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class HelloWorldCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal HelloWorldCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public string Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((string)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    public delegate void PhotoGalleryListCompletedEventHandler(object sender, PhotoGalleryListCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class PhotoGalleryListCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal PhotoGalleryListCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public Oggetto[] Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((Oggetto[])(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    public delegate void SaveImageCompletedEventHandler(object sender, SaveImageCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class SaveImageCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal SaveImageCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public bool Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((bool)(this.results[0]));
            }
        }
    }
}

#pragma warning restore 1591