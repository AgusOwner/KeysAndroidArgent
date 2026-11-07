.class public Lorg/apache/tools/ant/helper/ProjectHelperImpl;
.super Lorg/apache/tools/ant/ProjectHelper;
.source "ProjectHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/helper/ProjectHelperImpl$RootHandler;,
        Lorg/apache/tools/ant/helper/ProjectHelperImpl$DescriptionHandler;,
        Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;,
        Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;,
        Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;,
        Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;,
        Lorg/apache/tools/ant/helper/ProjectHelperImpl$ProjectHandler;,
        Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;
    }
.end annotation


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private buildFile:Ljava/io/File;

.field private buildFileParent:Ljava/io/File;

.field private implicitTarget:Lorg/apache/tools/ant/Target;

.field private locator:Lorg/xml/sax/Locator;

.field private parser:Lorg/xml/sax/Parser;

.field private project:Lorg/apache/tools/ant/Project;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 98
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectHelper;-><init>()V

    .line 93
    new-instance v0, Lorg/apache/tools/ant/Target;

    invoke-direct {v0}, Lorg/apache/tools/ant/Target;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->implicitTarget:Lorg/apache/tools/ant/Target;

    const-string v1, ""

    .line 99
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Target;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/xml/sax/Parser;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->parser:Lorg/xml/sax/Parser;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/xml/sax/Locator;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->locator:Lorg/xml/sax/Locator;

    return-object p0
.end method

.method static synthetic access$102(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/Locator;)Lorg/xml/sax/Locator;
    .locals 0

    .line 56
    iput-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->locator:Lorg/xml/sax/Locator;

    return-object p1
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->project:Lorg/apache/tools/ant/Project;

    return-object p0
.end method

.method static synthetic access$300()Lorg/apache/tools/ant/util/FileUtils;
    .locals 1

    .line 56
    sget-object v0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Ljava/io/File;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->buildFileParent:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$500(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Ljava/io/File;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->buildFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$600(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Target;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->implicitTarget:Lorg/apache/tools/ant/Target;

    return-object p0
.end method

.method static synthetic access$700(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;Lorg/apache/tools/ant/Target;Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 56
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->handleElement(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;Lorg/apache/tools/ant/Target;Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Ljava/lang/Object;Lorg/xml/sax/AttributeList;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->configureId(Ljava/lang/Object;Lorg/xml/sax/AttributeList;)V

    return-void
.end method

.method private configureId(Ljava/lang/Object;Lorg/xml/sax/AttributeList;)V
    .locals 1

    const-string v0, "id"

    .line 1030
    invoke-interface {p2, v0}, Lorg/xml/sax/AttributeList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1032
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, p2, p1}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static handleElement(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;Lorg/apache/tools/ant/Target;Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    const-string v0, "description"

    .line 610
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    new-instance p2, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DescriptionHandler;

    invoke-direct {p2, p0, p1}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DescriptionHandler;-><init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;)V

    goto :goto_0

    .line 613
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getDataTypeDefinitions()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 614
    new-instance v0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;-><init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;Lorg/apache/tools/ant/Target;)V

    invoke-virtual {v0, p3, p4}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->init(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    goto :goto_0

    .line 616
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;-><init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;Lorg/apache/tools/ant/TaskContainer;Lorg/apache/tools/ant/RuntimeConfigurable;Lorg/apache/tools/ant/Target;)V

    invoke-virtual {v0, p3, p4}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->init(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public parse(Lorg/apache/tools/ant/Project;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "parsing buildfile "

    .line 111
    instance-of v1, p2, Ljava/io/File;

    if-eqz v1, :cond_5

    .line 115
    check-cast p2, Ljava/io/File;

    .line 117
    iput-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->project:Lorg/apache/tools/ant/Project;

    .line 118
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->buildFile:Ljava/io/File;

    .line 119
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->buildFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->buildFileParent:Ljava/io/File;

    .line 122
    :try_start_0
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->getParser()Lorg/xml/sax/Parser;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->parser:Lorg/xml/sax/Parser;
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    new-instance v1, Lorg/xml/sax/helpers/XMLReaderAdapter;

    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/helpers/XMLReaderAdapter;-><init>(Lorg/xml/sax/XMLReader;)V

    iput-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->parser:Lorg/xml/sax/Parser;

    .line 127
    :goto_0
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catch Lorg/xml/sax/SAXParseException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    :try_start_2
    sget-object v2, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/util/FileUtils;->toURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 130
    invoke-virtual {v3, v2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " with URI = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 132
    new-instance p1, Lorg/apache/tools/ant/helper/ProjectHelperImpl$RootHandler;

    invoke-direct {p1, p0}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$RootHandler;-><init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)V

    .line 133
    iget-object p2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->parser:Lorg/xml/sax/Parser;

    invoke-interface {p2, p1}, Lorg/xml/sax/Parser;->setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V

    .line 134
    iget-object p2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->parser:Lorg/xml/sax/Parser;

    invoke-interface {p2, p1}, Lorg/xml/sax/Parser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 135
    iget-object p2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->parser:Lorg/xml/sax/Parser;

    invoke-interface {p2, p1}, Lorg/xml/sax/Parser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 136
    iget-object p2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->parser:Lorg/xml/sax/Parser;

    invoke-interface {p2, p1}, Lorg/xml/sax/Parser;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 137
    iget-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->parser:Lorg/xml/sax/Parser;

    invoke-interface {p1, v3}, Lorg/xml/sax/Parser;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 138
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Lorg/xml/sax/SAXParseException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_1

    .line 127
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p1
    :try_end_5
    .catch Lorg/xml/sax/SAXParseException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception p1

    .line 162
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error reading project file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 160
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Encoding of project file is invalid."

    invoke-direct {p2, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 158
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_4
    move-exception p1

    .line 152
    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object p2

    .line 153
    instance-of v0, p2, Lorg/apache/tools/ant/BuildException;

    if-eqz v0, :cond_2

    .line 154
    check-cast p2, Lorg/apache/tools/ant/BuildException;

    throw p2

    .line 156
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_5
    move-exception p1

    .line 139
    new-instance p2, Lorg/apache/tools/ant/Location;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v1

    .line 140
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v2

    invoke-direct {p2, v0, v1, v2}, Lorg/apache/tools/ant/Location;-><init>(Ljava/lang/String;II)V

    .line 142
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 143
    instance-of v1, v0, Lorg/apache/tools/ant/BuildException;

    if-eqz v1, :cond_4

    .line 144
    check-cast v0, Lorg/apache/tools/ant/BuildException;

    .line 145
    invoke-virtual {v0}, Lorg/apache/tools/ant/BuildException;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object p1

    sget-object v1, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    if-ne p1, v1, :cond_3

    .line 146
    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/BuildException;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 148
    :cond_3
    throw v0

    .line 150
    :cond_4
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 112
    :cond_5
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "Only File source supported by default plugin"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
