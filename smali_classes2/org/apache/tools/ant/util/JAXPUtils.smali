.class public Lorg/apache/tools/ant/util/JAXPUtils;
.super Ljava/lang/Object;
.source "JAXPUtils.java"


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private static nsParserFactory:Ljavax/xml/parsers/SAXParserFactory;

.field private static parserFactory:Ljavax/xml/parsers/SAXParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/util/JAXPUtils;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    const/4 v0, 0x0

    .line 59
    sput-object v0, Lorg/apache/tools/ant/util/JAXPUtils;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    .line 66
    sput-object v0, Lorg/apache/tools/ant/util/JAXPUtils;->nsParserFactory:Ljavax/xml/parsers/SAXParserFactory;

    .line 73
    sput-object v0, Lorg/apache/tools/ant/util/JAXPUtils;->builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToBuildException(Lorg/xml/sax/SAXException;)Lorg/apache/tools/ant/BuildException;
    .locals 1

    .line 232
    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    new-instance p0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 236
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 202
    :try_start_0
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->getDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 204
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static declared-synchronized getDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Document builder factory has not been configured correctly: "

    const-class v1, Lorg/apache/tools/ant/util/JAXPUtils;

    monitor-enter v1

    .line 247
    :try_start_0
    sget-object v2, Lorg/apache/tools/ant/util/JAXPUtils;->builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 249
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    sput-object v2, Lorg/apache/tools/ant/util/JAXPUtils;->builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_1
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 251
    :try_start_2
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v2}, Ljavax/xml/parsers/FactoryConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 256
    :cond_0
    :goto_0
    sget-object v0, Lorg/apache/tools/ant/util/JAXPUtils;->builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getNSParserFactory()Ljavax/xml/parsers/SAXParserFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-class v0, Lorg/apache/tools/ant/util/JAXPUtils;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Lorg/apache/tools/ant/util/JAXPUtils;->nsParserFactory:Ljavax/xml/parsers/SAXParserFactory;

    if-nez v1, :cond_0

    .line 106
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->newParserFactory()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    sput-object v1, Lorg/apache/tools/ant/util/JAXPUtils;->nsParserFactory:Ljavax/xml/parsers/SAXParserFactory;

    const/4 v2, 0x1

    .line 107
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 109
    :cond_0
    sget-object v1, Lorg/apache/tools/ant/util/JAXPUtils;->nsParserFactory:Ljavax/xml/parsers/SAXParserFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getNamespaceXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 174
    :try_start_0
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->getNSParserFactory()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/JAXPUtils;->newSAXParser(Ljavax/xml/parsers/SAXParserFactory;)Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 176
    invoke-static {v0}, Lorg/apache/tools/ant/util/JAXPUtils;->convertToBuildException(Lorg/xml/sax/SAXException;)Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public static getParser()Lorg/xml/sax/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 141
    :try_start_0
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->getParserFactory()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/JAXPUtils;->newSAXParser(Ljavax/xml/parsers/SAXParserFactory;)Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getParser()Lorg/xml/sax/Parser;

    move-result-object v0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 143
    invoke-static {v0}, Lorg/apache/tools/ant/util/JAXPUtils;->convertToBuildException(Lorg/xml/sax/SAXException;)Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public static declared-synchronized getParserFactory()Ljavax/xml/parsers/SAXParserFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-class v0, Lorg/apache/tools/ant/util/JAXPUtils;

    monitor-enter v0

    .line 87
    :try_start_0
    sget-object v1, Lorg/apache/tools/ant/util/JAXPUtils;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    if-nez v1, :cond_0

    .line 88
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->newParserFactory()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    sput-object v1, Lorg/apache/tools/ant/util/JAXPUtils;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    .line 90
    :cond_0
    sget-object v1, Lorg/apache/tools/ant/util/JAXPUtils;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getSystemId(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 190
    sget-object v0, Lorg/apache/tools/ant/util/JAXPUtils;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/util/FileUtils;->toURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 158
    :try_start_0
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->getParserFactory()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/JAXPUtils;->newSAXParser(Ljavax/xml/parsers/SAXParserFactory;)Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 160
    invoke-static {v0}, Lorg/apache/tools/ant/util/JAXPUtils;->convertToBuildException(Lorg/xml/sax/SAXException;)Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public static newParserFactory()Ljavax/xml/parsers/SAXParserFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 122
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 124
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "XML parser factory has not been configured correctly: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljavax/xml/parsers/FactoryConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static newSAXParser(Ljavax/xml/parsers/SAXParserFactory;)Ljavax/xml/parsers/SAXParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 217
    :try_start_0
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 222
    invoke-static {p0}, Lorg/apache/tools/ant/util/JAXPUtils;->convertToBuildException(Lorg/xml/sax/SAXException;)Lorg/apache/tools/ant/BuildException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    .line 219
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot create parser for the given configuration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
