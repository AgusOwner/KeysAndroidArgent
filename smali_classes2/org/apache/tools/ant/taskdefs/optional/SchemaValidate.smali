.class public Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;
.super Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;
.source "SchemaValidate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;
    }
.end annotation


# static fields
.field public static final ERROR_DUPLICATE_SCHEMA:Ljava/lang/String; = "Duplicate declaration of schema "

.field public static final ERROR_NO_XSD_SUPPORT:Ljava/lang/String; = "Parser does not support Xerces or JAXP schema features"

.field public static final ERROR_PARSER_CREATION_FAILURE:Ljava/lang/String; = "Could not create parser"

.field public static final ERROR_SAX_1:Ljava/lang/String; = "SAX1 parsers are not supported"

.field public static final ERROR_TOO_MANY_DEFAULT_SCHEMAS:Ljava/lang/String; = "Only one of defaultSchemaFile and defaultSchemaURL allowed"

.field public static final MESSAGE_ADDING_SCHEMA:Ljava/lang/String; = "Adding schema "


# instance fields
.field private anonymousSchema:Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;

.field private disableDTD:Z

.field private fullChecking:Z

.field private schemaLocations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->schemaLocations:Ljava/util/Map;

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->fullChecking:Z

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->disableDTD:Z

    return-void
.end method

.method private setNoNamespaceSchemaProperty(Ljava/lang/String;)V
    .locals 1

    .line 125
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->getNoNamespaceSchemaURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addConfiguredSchema(Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;)V
    .locals 3

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adding schema "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->log(Ljava/lang/String;I)V

    .line 158
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->validateNamespace()V

    .line 159
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->schemaLocations:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Duplicate declaration of schema "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->schemaLocations:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected addSchemaLocations()V
    .locals 2

    .line 268
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->schemaLocations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->schemaLocations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$$ExternalSyntheticLambda0;-><init>()V

    .line 270
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;)V

    .line 271
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, " "

    .line 272
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "http://apache.org/xml/properties/schema/external-schemaLocation"

    .line 274
    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected createAnonymousSchema()V
    .locals 2

    .line 179
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->anonymousSchema:Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->anonymousSchema:Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;

    .line 182
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->anonymousSchema:Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;

    const-string v1, "(no namespace)"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->setNamespace(Ljava/lang/String;)V

    return-void
.end method

.method protected createDefaultReader()Lorg/xml/sax/XMLReader;
    .locals 3

    .line 250
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 251
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 252
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 255
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 258
    :goto_0
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Could not create parser"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public enableJAXP12SchemaValidation()Z
    .locals 2

    :try_start_0
    const-string v0, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    .line 140
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    .line 142
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->setNoNamespaceSchemaProperty(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Lorg/apache/tools/ant/BuildException;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->log(Ljava/lang/String;I)V

    const/4 v0, 0x0

    return v0
.end method

.method public enableXercesSchemaValidation()Z
    .locals 2

    :try_start_0
    const-string v0, "http://apache.org/xml/features/validation/schema"

    const/4 v1, 0x1

    .line 110
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    .line 112
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->setNoNamespaceSchemaProperty(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Lorg/apache/tools/ant/BuildException;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->log(Ljava/lang/String;I)V

    const/4 v0, 0x0

    return v0
.end method

.method protected getNoNamespaceSchemaURL()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->anonymousSchema:Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->getSchemaLocationURL()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 99
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->init()V

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->setLenient(Z)V

    return-void
.end method

.method protected initValidator()V
    .locals 2

    .line 219
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->initValidator()V

    .line 221
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->isSax1Parser()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "http://xml.org/sax/features/namespaces"

    const/4 v1, 0x1

    .line 226
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->setFeature(Ljava/lang/String;Z)V

    .line 227
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->enableXercesSchemaValidation()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->enableJAXP12SchemaValidation()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Parser does not support Xerces or JAXP schema features"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const-string v0, "http://apache.org/xml/features/validation/schema-full-checking"

    .line 233
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->fullChecking:Z

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "http://apache.org/xml/features/disallow-doctype-decl"

    .line 236
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->disableDTD:Z

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->setFeatureIfSupported(Ljava/lang/String;Z)V

    .line 239
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->addSchemaLocations()V

    return-void

    .line 222
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "SAX1 parsers are not supported"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic lambda$addSchemaLocations$0$org-apache-tools-ant-taskdefs-optional-SchemaValidate(Ljava/lang/String;)V
    .locals 2

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding schema "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->log(Ljava/lang/String;I)V

    return-void
.end method

.method protected onSuccessfulValidation(I)V
    .locals 1

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " file(s) have been successfully validated."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public setDisableDTD(Z)V
    .locals 0

    .line 208
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->disableDTD:Z

    return-void
.end method

.method protected setFeatureIfSupported(Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x3

    .line 295
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->getXmlReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Not supported: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 297
    :catch_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Not recognized: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->log(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public setFullChecking(Z)V
    .locals 0

    .line 171
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->fullChecking:Z

    return-void
.end method

.method public setNoNamespaceFile(Ljava/io/File;)V
    .locals 1

    .line 199
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->createAnonymousSchema()V

    .line 200
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->anonymousSchema:Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->setFile(Ljava/io/File;)V

    return-void
.end method

.method public setNoNamespaceURL(Ljava/lang/String;)V
    .locals 1

    .line 190
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->createAnonymousSchema()V

    .line 191
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate;->anonymousSchema:Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/SchemaValidate$SchemaLocation;->setUrl(Ljava/lang/String;)V

    return-void
.end method
