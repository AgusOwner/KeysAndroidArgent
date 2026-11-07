.class public Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;
.super Lorg/apache/tools/ant/Task;
.source "XMLValidateTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;,
        Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Attribute;,
        Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Property;
    }
.end annotation


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field protected static final INIT_FAILED_MSG:Ljava/lang/String; = "Could not start xml validation: "

.field public static final MESSAGE_FILES_VALIDATED:Ljava/lang/String; = " file(s) have been successfully validated."


# instance fields
.field private attributeList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field protected classpath:Lorg/apache/tools/ant/types/Path;

.field protected errorHandler:Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;

.field protected failOnError:Z

.field protected file:Ljava/io/File;

.field protected filesets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;"
        }
    .end annotation
.end field

.field protected lenient:Z

.field private final propertyList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Property;",
            ">;"
        }
    .end annotation
.end field

.field protected readerClassName:Ljava/lang/String;

.field private readerLoader:Lorg/apache/tools/ant/AntClassLoader;

.field protected warn:Z

.field private xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

.field protected xmlReader:Lorg/xml/sax/XMLReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->failOnError:Z

    .line 71
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->warn:Z

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->lenient:Z

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->readerClassName:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->file:Ljava/io/File;

    .line 78
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->filesets:Ljava/util/Vector;

    .line 87
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 89
    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;-><init>(Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;)V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->errorHandler:Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;

    .line 94
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->attributeList:Ljava/util/Vector;

    .line 99
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->propertyList:Ljava/util/Vector;

    .line 101
    new-instance v1, Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/XMLCatalog;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

    .line 106
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->readerLoader:Lorg/apache/tools/ant/AntClassLoader;

    return-void
.end method

.method static synthetic access$000()Lorg/apache/tools/ant/util/FileUtils;
    .locals 1

    .line 57
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-object v0
.end method

.method private createDefaultReaderOrParser()Ljava/lang/Object;
    .locals 1

    .line 447
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->createDefaultReader()Lorg/xml/sax/XMLReader;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 449
    :catch_0
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->getParser()Lorg/xml/sax/Parser;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public addConfiguredXMLCatalog(Lorg/apache/tools/ant/types/XMLCatalog;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->addConfiguredXMLCatalog(Lorg/apache/tools/ant/types/XMLCatalog;)V

    return-void
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->filesets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method protected cleanup()V
    .locals 1

    .line 434
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->readerLoader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    const/4 v0, 0x0

    .line 436
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->readerLoader:Lorg/apache/tools/ant/AntClassLoader;

    :cond_0
    return-void
.end method

.method public createAttribute()Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Attribute;
    .locals 2

    .line 227
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Attribute;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Attribute;-><init>()V

    .line 228
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->attributeList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 177
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 180
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createDTD()Lorg/apache/tools/ant/types/DTDLocation;
    .locals 2

    .line 261
    new-instance v0, Lorg/apache/tools/ant/types/DTDLocation;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/DTDLocation;-><init>()V

    .line 262
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/XMLCatalog;->addDTD(Lorg/apache/tools/ant/types/ResourceLocation;)V

    return-object v0
.end method

.method protected createDefaultReader()Lorg/xml/sax/XMLReader;
    .locals 1

    .line 462
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    return-object v0
.end method

.method public createProperty()Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Property;
    .locals 2

    .line 239
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Property;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Property;-><init>()V

    .line 240
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->propertyList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createXmlReader()Lorg/xml/sax/XMLReader;
    .locals 5

    .line 381
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->readerClassName:Ljava/lang/String;

    const-string v1, "Could not start xml validation: "

    if-nez v0, :cond_0

    .line 382
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->createDefaultReaderOrParser()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 388
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->classpath:Lorg/apache/tools/ant/types/Path;

    if-eqz v2, :cond_1

    .line 389
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->readerLoader:Lorg/apache/tools/ant/AntClassLoader;

    .line 390
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->readerClassName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 393
    :cond_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 396
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_1
    instance-of v2, v0, Lorg/xml/sax/XMLReader;

    const/4 v3, 0x3

    if-eqz v2, :cond_2

    .line 406
    move-object v1, v0

    check-cast v1, Lorg/xml/sax/XMLReader;

    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Using SAX2 reader "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->log(Ljava/lang/String;I)V

    goto :goto_2

    .line 413
    :cond_2
    instance-of v2, v0, Lorg/xml/sax/Parser;

    if-eqz v2, :cond_3

    .line 414
    new-instance v1, Lorg/xml/sax/helpers/ParserAdapter;

    move-object v2, v0

    check-cast v2, Lorg/xml/sax/Parser;

    invoke-direct {v1, v2}, Lorg/xml/sax/helpers/ParserAdapter;-><init>(Lorg/xml/sax/Parser;)V

    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Using SAX1 parser "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->log(Ljava/lang/String;I)V

    :goto_2
    return-object v1

    .line 419
    :cond_3
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " implements nor SAX1 Parser nor SAX2 XMLReader."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    .line 399
    :goto_3
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->readerClassName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected doValidate(Ljava/io/File;)Z
    .locals 5

    const-string v0, "Could not validate document "

    const-string v1, "Validating "

    .line 537
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->initValidator()V

    const/4 v2, 0x0

    .line 540
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "... "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {p0, v1, v3}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->log(Ljava/lang/String;I)V

    .line 541
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->errorHandler:Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->init(Ljava/io/File;)V

    .line 542
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    new-array v4, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 543
    sget-object v3, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/util/FileUtils;->toURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 544
    invoke-virtual {v1, v3}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 545
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v3, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 555
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 547
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Caught when validating: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->log(Ljava/lang/String;I)V

    .line 548
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->failOnError:Z

    if-nez v3, :cond_2

    .line 552
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->log(Ljava/lang/String;)V

    move v0, v2

    .line 559
    :goto_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->errorHandler:Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->getFailure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->failOnError:Z

    if-nez v0, :cond_0

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not a valid XML document"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 561
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not a valid XML document."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v2, v0

    :goto_1
    return v2

    .line 549
    :cond_2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public execute()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "File "

    .line 292
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->file:Ljava/io/File;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->filesets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Specify at least one source - a file or a fileset."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->file:Ljava/io/File;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 298
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 299
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->file:Ljava/io/File;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->doValidate(Ljava/io/File;)Z

    const/4 v0, 0x1

    goto :goto_2

    .line 302
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->file:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cannot be read"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->failOnError:Z

    if-nez v1, :cond_3

    .line 306
    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 304
    :cond_3
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_1
    move v0, v2

    .line 311
    :goto_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->filesets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/types/FileSet;

    .line 312
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v4

    .line 313
    invoke-virtual {v4}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_3
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 314
    new-instance v8, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0, v8}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->doValidate(Ljava/io/File;)Z

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 319
    :cond_6
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->onSuccessfulValidation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->cleanup()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->cleanup()V

    .line 322
    throw v0
.end method

.method protected getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

    return-object v0
.end method

.method protected getXmlReader()Lorg/xml/sax/XMLReader;
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlReader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 250
    invoke-super {p0}, Lorg/apache/tools/ant/Task;->init()V

    .line 251
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/XMLCatalog;->setProject(Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method protected initValidator()V
    .locals 3

    .line 341
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->createXmlReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 343
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 344
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlReader:Lorg/xml/sax/XMLReader;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->errorHandler:Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 346
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->isSax1Parser()Z

    move-result v0

    if-nez v0, :cond_2

    .line 348
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->lenient:Z

    if-nez v0, :cond_0

    const-string v0, "http://xml.org/sax/features/validation"

    const/4 v1, 0x1

    .line 349
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->setFeature(Ljava/lang/String;Z)V

    .line 352
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->attributeList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Attribute;

    .line 353
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Attribute;->getValue()Z

    move-result v1

    invoke-virtual {p0, v2, v1}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    .line 357
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->propertyList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Property;

    .line 358
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected isSax1Parser()Z
    .locals 1

    .line 368
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlReader:Lorg/xml/sax/XMLReader;

    instance-of v0, v0, Lorg/xml/sax/helpers/ParserAdapter;

    return v0
.end method

.method protected onSuccessfulValidation(I)V
    .locals 1

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " file(s) have been successfully validated."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->log(Ljava/lang/String;)V

    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->readerClassName:Ljava/lang/String;

    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 166
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->classpath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 189
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setFailOnError(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->failOnError:Z

    return-void
.end method

.method protected setFeature(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Parser "

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting feature "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->log(Ljava/lang/String;I)V

    .line 475
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v1, p1, p2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 485
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 487
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " doesn\'t support feature "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 491
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-direct {v1, p1, p2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    :catch_1
    move-exception p2

    .line 477
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 479
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " doesn\'t recognize feature "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 483
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-direct {v1, p1, p2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->file:Ljava/io/File;

    return-void
.end method

.method public setLenient(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->lenient:Z

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Parser "

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 510
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v1, p1, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 520
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 522
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " doesn\'t support property "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 526
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-direct {v1, p1, p2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    :catch_1
    move-exception p2

    .line 512
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 514
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " doesn\'t recognize property "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 518
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-direct {v1, p1, p2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 506
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "Property name and value must be specified."

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWarn(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->warn:Z

    return-void
.end method
