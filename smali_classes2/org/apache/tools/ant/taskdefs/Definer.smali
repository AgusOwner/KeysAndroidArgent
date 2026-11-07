.class public abstract Lorg/apache/tools/ant/taskdefs/Definer;
.super Lorg/apache/tools/ant/taskdefs/DefBase;
.source "Definer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Definer$Format;,
        Lorg/apache/tools/ant/taskdefs/Definer$OnError;
    }
.end annotation


# static fields
.field private static final ANTLIB_XML:Ljava/lang/String; = "/antlib.xml"

.field private static final RESOURCE_STACK:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/net/URL;",
            "Lorg/apache/tools/ant/Location;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private adaptTo:Ljava/lang/String;

.field private adaptToClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private adapter:Ljava/lang/String;

.field private adapterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private classname:Ljava/lang/String;

.field private definerSet:Z

.field private file:Ljava/io/File;

.field private format:I

.field private name:Ljava/lang/String;

.field private onError:I

.field private resource:Ljava/lang/String;

.field private restrict:Z


# direct methods
.method public static synthetic $r8$lambda$vRrMgxufcyfM-dLnoWpTDbfiIIM()Ljava/util/HashMap;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Definer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Definer$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Definer$$ExternalSyntheticThreadLocal1;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/Definer$$ExternalSyntheticThreadLocal1;-><init>(Ljava/util/function/Supplier;)V

    sput-object v1, Lorg/apache/tools/ant/taskdefs/Definer;->RESOURCE_STACK:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/DefBase;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->restrict:Z

    .line 65
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->format:I

    .line 66
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->definerSet:Z

    .line 67
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->onError:I

    return-void
.end method

.method private fileToURL()Ljava/net/URL;
    .locals 5

    .line 318
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "File "

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Definer;->file:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " does not exist"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 321
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Definer;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_1

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Definer;->file:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is not a file"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 326
    :try_start_0
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Definer;->file:Ljava/io/File;

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/util/FileUtils;->getFileURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->file:Ljava/io/File;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " cannot use as URL: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 330
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    :cond_2
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->onError:I

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v3, :cond_5

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq v1, v3, :cond_4

    if-eq v1, v4, :cond_3

    goto :goto_1

    .line 336
    :cond_3
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_4
    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/Definer;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 340
    :cond_5
    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/Definer;->log(Ljava/lang/String;I)V

    :goto_1
    return-object v2
.end method

.method private loadAntlib(Ljava/lang/ClassLoader;Ljava/net/URL;)V
    .locals 2

    .line 416
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lorg/apache/tools/ant/taskdefs/Antlib;->createAntlib(Lorg/apache/tools/ant/Project;Ljava/net/URL;Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Antlib;

    move-result-object p2

    .line 417
    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/taskdefs/Antlib;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 418
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/taskdefs/Antlib;->setURI(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p2}, Lorg/apache/tools/ant/taskdefs/Antlib;->execute()V
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 422
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object p2

    .line 421
    invoke-static {p1, p2}, Lorg/apache/tools/ant/ProjectHelper;->addLocationToBuildException(Lorg/apache/tools/ant/BuildException;Lorg/apache/tools/ant/Location;)Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public static makeResourceFromURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x7

    .line 291
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "//"

    .line 293
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "/antlib.xml"

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 296
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, ".xml"

    .line 297
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private resourceToURLs(Ljava/lang/ClassLoader;)Ljava/util/Enumeration;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 356
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->resource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_3

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not load definitions from resource "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->resource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". It could not be found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->onError:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq v1, v2, :cond_1

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 373
    :cond_1
    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/Definer;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 370
    :cond_2
    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Definer;->log(Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 358
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not fetch resources named "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Definer;->resource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method private tooManyDefinitions()V
    .locals 3

    .line 626
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one of the attributes name, file and resource can be set"

    .line 628
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method


# virtual methods
.method protected addDefinition(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 566
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/tools/ant/ProjectHelper;->genComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 568
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->onError:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 569
    invoke-static {p3, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 572
    :goto_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Definer;->adapter:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 573
    invoke-static {v2, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Definer;->adapterClass:Ljava/lang/Class;

    .line 576
    :cond_1
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Definer;->adaptTo:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 577
    invoke-static {v2, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Definer;->adaptToClass:Ljava/lang/Class;

    .line 580
    :cond_2
    new-instance v2, Lorg/apache/tools/ant/AntTypeDefinition;

    invoke-direct {v2}, Lorg/apache/tools/ant/AntTypeDefinition;-><init>()V

    .line 581
    invoke-virtual {v2, p2}, Lorg/apache/tools/ant/AntTypeDefinition;->setName(Ljava/lang/String;)V

    .line 582
    invoke-virtual {v2, p3}, Lorg/apache/tools/ant/AntTypeDefinition;->setClassName(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->setClass(Ljava/lang/Class;)V

    .line 584
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/Definer;->adapterClass:Ljava/lang/Class;

    invoke-virtual {v2, p2}, Lorg/apache/tools/ant/AntTypeDefinition;->setAdapterClass(Ljava/lang/Class;)V

    .line 585
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/Definer;->adaptToClass:Ljava/lang/Class;

    invoke-virtual {v2, p2}, Lorg/apache/tools/ant/AntTypeDefinition;->setAdaptToClass(Ljava/lang/Class;)V

    .line 586
    iget-boolean p2, p0, Lorg/apache/tools/ant/taskdefs/Definer;->restrict:Z

    invoke-virtual {v2, p2}, Lorg/apache/tools/ant/AntTypeDefinition;->setRestrict(Z)V

    .line 587
    invoke-virtual {v2, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->setClassLoader(Ljava/lang/ClassLoader;)V

    if-eqz v1, :cond_3

    .line 589
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/apache/tools/ant/AntTypeDefinition;->checkClass(Lorg/apache/tools/ant/Project;)V

    .line 591
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object p2

    .line 592
    invoke-virtual {p2, v2}, Lorg/apache/tools/ant/ComponentHelper;->addDataTypeDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 599
    :try_start_1
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 600
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getTaskName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " A class needed by class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, " cannot be found: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 601
    invoke-virtual {p2}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, "\n using the classloader "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 603
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object p3

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    :catch_2
    move-exception p2

    .line 594
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 595
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getTaskName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, " cannot be found\n using the classloader "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 597
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object p3

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
    :try_end_1
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_1 .. :try_end_1} :catch_0

    .line 606
    :goto_1
    iget p2, p0, Lorg/apache/tools/ant/taskdefs/Definer;->onError:I

    if-eqz p2, :cond_5

    if-eq p2, v0, :cond_4

    const/4 p3, 0x3

    if-eq p2, p3, :cond_5

    .line 615
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildException;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Definer;->log(Ljava/lang/String;I)V

    goto :goto_2

    .line 611
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildException;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "Warning: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Definer;->log(Ljava/lang/String;I)V

    :goto_2
    return-void

    .line 609
    :cond_5
    throw p1
.end method

.method public execute()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->createLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 208
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->definerSet:Z

    if-nez v1, :cond_2

    .line 213
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getURI()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 220
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "antlib:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getURI()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Definer;->makeResourceFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Definer;->setResource(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Only antlib URIs can be located from the URI alone, not the URI \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "name, file or resource attribute of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getTaskName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is undefined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 231
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 232
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Definer;->classname:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 236
    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Definer;->addDefinition(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 233
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "classname attribute of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getTaskName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " element is undefined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 238
    :cond_4
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->classname:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 244
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->file:Ljava/io/File;

    if-nez v1, :cond_5

    .line 245
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Definer;->resourceToURLs(Ljava/lang/ClassLoader;)Ljava/util/Enumeration;

    move-result-object v1

    goto :goto_1

    .line 247
    :cond_5
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->fileToURL()Ljava/net/URL;

    move-result-object v1

    if-nez v1, :cond_6

    return-void

    .line 251
    :cond_6
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    .line 254
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 255
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    .line 257
    iget v3, p0, Lorg/apache/tools/ant/taskdefs/Definer;->format:I

    .line 258
    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    move v3, v5

    :cond_7
    if-nez v3, :cond_8

    .line 263
    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Definer;->loadProperties(Ljava/lang/ClassLoader;Ljava/net/URL;)V

    goto :goto_2

    .line 265
    :cond_8
    sget-object v3, Lorg/apache/tools/ant/taskdefs/Definer;->RESOURCE_STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Warning: Recursive loading of "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ignored at "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 268
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " originally loaded at "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 270
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-virtual {p0, v2, v5}, Lorg/apache/tools/ant/taskdefs/Definer;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 274
    :cond_9
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-direct {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/Definer;->loadAntlib(Ljava/lang/ClassLoader;Ljava/net/URL;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/Definer;->RESOURCE_STACK:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    throw v0

    :cond_a
    :goto_2
    return-void

    .line 239
    :cond_b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You must not specify classname together with file or resource."

    .line 241
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public getClassname()Ljava/lang/String;
    .locals 1

    .line 494
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->classname:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->file:Ljava/io/File;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->resource:Ljava/lang/String;

    return-object v0
.end method

.method protected loadProperties(Ljava/lang/ClassLoader;Ljava/net/URL;)V
    .locals 4

    const-string v0, "Could not load definitions from "

    .line 390
    :try_start_0
    invoke-virtual {p2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    .line 392
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Definer;->log(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 403
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-void

    .line 396
    :cond_1
    :try_start_3
    new-instance p2, Ljava/util/Properties;

    invoke-direct {p2}, Ljava/util/Properties;-><init>()V

    .line 397
    invoke-virtual {p2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 398
    invoke-virtual {p2}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 399
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Definer;->name:Ljava/lang/String;

    .line 400
    invoke-virtual {p2, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Definer;->classname:Ljava/lang/String;

    .line 401
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Definer;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v2}, Lorg/apache/tools/ant/taskdefs/Definer;->addDefinition(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 403
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_4

    .line 390
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    .line 404
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw p2
.end method

.method public setAdaptTo(Ljava/lang/String;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->adaptTo:Ljava/lang/String;

    return-void
.end method

.method protected setAdaptToClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 550
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->adaptToClass:Ljava/lang/Class;

    return-void
.end method

.method public setAdapter(Ljava/lang/String;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->adapter:Ljava/lang/String;

    return-void
.end method

.method protected setAdapterClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 528
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->adapterClass:Ljava/lang/Class;

    return-void
.end method

.method public setAntlib(Ljava/lang/String;)V
    .locals 3

    .line 463
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->definerSet:Z

    if-eqz v0, :cond_0

    .line 464
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->tooManyDefinitions()V

    :cond_0
    const-string v0, "antlib:"

    .line 466
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Definer;->setURI(Ljava/lang/String;)V

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/antlib.xml"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->resource:Ljava/lang/String;

    const/4 p1, 0x1

    .line 473
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->definerSet:Z

    return-void

    .line 467
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Invalid antlib attribute - it must start with antlib:"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setClassname(Ljava/lang/String;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->classname:Ljava/lang/String;

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 1

    .line 432
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->definerSet:Z

    if-eqz v0, :cond_0

    .line 433
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->tooManyDefinitions()V

    :cond_0
    const/4 v0, 0x1

    .line 435
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->definerSet:Z

    .line 436
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->file:Ljava/io/File;

    return-void
.end method

.method public setFormat(Lorg/apache/tools/ant/taskdefs/Definer$Format;)V
    .locals 0

    .line 174
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Definer$Format;->getIndex()I

    move-result p1

    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->format:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 481
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->definerSet:Z

    if-eqz v0, :cond_0

    .line 482
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->tooManyDefinitions()V

    :cond_0
    const/4 v0, 0x1

    .line 484
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->definerSet:Z

    .line 485
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->name:Ljava/lang/String;

    return-void
.end method

.method public setOnError(Lorg/apache/tools/ant/taskdefs/Definer$OnError;)V
    .locals 0

    .line 166
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Definer$OnError;->getIndex()I

    move-result p1

    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->onError:I

    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 1

    .line 445
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->definerSet:Z

    if-eqz v0, :cond_0

    .line 446
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Definer;->tooManyDefinitions()V

    :cond_0
    const/4 v0, 0x1

    .line 448
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Definer;->definerSet:Z

    .line 449
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->resource:Ljava/lang/String;

    return-void
.end method

.method protected setRestrict(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Definer;->restrict:Z

    return-void
.end method
