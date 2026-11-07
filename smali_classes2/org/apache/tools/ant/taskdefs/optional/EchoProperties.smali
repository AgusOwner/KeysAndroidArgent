.class public Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;
.super Lorg/apache/tools/ant/Task;
.source "EchoProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$FormatAttribute;,
        Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final PROPERTIES:Ljava/lang/String; = "properties"

.field private static final PROPERTY:Ljava/lang/String; = "property"


# instance fields
.field private destfile:Ljava/io/File;

.field private failonerror:Z

.field private format:Ljava/lang/String;

.field private inFile:Ljava/io/File;

.field private prefix:Ljava/lang/String;

.field private propertySets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/PropertySet;",
            ">;"
        }
    .end annotation
.end field

.field private regex:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$UJynGDgY57o1_9kRVv6A7xM8hFg(Ljava/util/Hashtable;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->inFile:Ljava/io/File;

    .line 124
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->destfile:Ljava/io/File;

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->failonerror:Z

    .line 133
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->propertySets:Ljava/util/List;

    const-string v0, "text"

    .line 135
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->format:Ljava/lang/String;

    return-void
.end method

.method private createOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->destfile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 490
    new-instance v0, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/ProjectComponent;)V

    return-object v0

    .line 492
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->destfile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->failonerror:Z

    const-string v3, "destfile is a directory!"

    if-nez v0, :cond_1

    .line 497
    invoke-virtual {p0, v3, v2}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->log(Ljava/lang/String;I)V

    return-object v1

    .line 495
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 500
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->destfile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->destfile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_4

    .line 503
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->failonerror:Z

    const-string v3, "Can not write to the specified destfile!"

    if-nez v0, :cond_3

    .line 506
    invoke-virtual {p0, v3, v2}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->log(Ljava/lang/String;I)V

    return-object v1

    .line 504
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 509
    :cond_4
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->destfile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    new-array v1, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method private static getDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .locals 2

    .line 519
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 521
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic lambda$saveProperties$0(Ljava/util/Properties;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 370
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$sortProperties$1(Ljava/util/Properties;Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;
    .locals 2

    .line 426
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1;)V

    return-object v0
.end method

.method private sortProperties(Ljava/util/Properties;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;",
            ">;"
        }
    .end annotation

    .line 425
    invoke-virtual {p1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$$ExternalSyntheticLambda3;-><init>(Ljava/util/Properties;)V

    .line 426
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object p1

    .line 427
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public addPropertyset(Lorg/apache/tools/ant/types/PropertySet;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->propertySets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->regex:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Please specify either prefix or regex, but not both"

    .line 266
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 269
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 273
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->inFile:Ljava/io/File;

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->propertySets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getProperties()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    goto/16 :goto_2

    .line 276
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->inFile:Ljava/io/File;

    if-eqz v1, :cond_a

    .line 277
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 279
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->failonerror:Z

    const-string v1, "srcfile is a directory!"

    if-nez v0, :cond_3

    .line 282
    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->log(Ljava/lang/String;I)V

    return-void

    .line 280
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 286
    :cond_4
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->inFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->inFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_6

    .line 288
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->failonerror:Z

    const-string v1, "Can not read from the specified srcfile!"

    if-nez v0, :cond_5

    .line 291
    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->log(Ljava/lang/String;I)V

    return-void

    .line 289
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    :cond_6
    const/4 v1, 0x1

    .line 296
    :try_start_0
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->inFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :try_start_1
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 298
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 299
    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_a

    .line 300
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_7

    .line 296
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not read file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->inFile:Ljava/io/File;

    .line 310
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 311
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->failonerror:Z

    if-nez v3, :cond_8

    .line 314
    invoke-virtual {p0, v2, v1}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->log(Ljava/lang/String;I)V

    return-void

    .line 312
    :cond_8
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    :catch_1
    move-exception v0

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not find file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->inFile:Ljava/io/File;

    .line 302
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 303
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->failonerror:Z

    if-nez v3, :cond_9

    .line 306
    invoke-virtual {p0, v2, v1}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->log(Ljava/lang/String;I)V

    return-void

    .line 304
    :cond_9
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 319
    :cond_a
    :goto_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->propertySets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 320
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$$ExternalSyntheticLambda1;-><init>(Ljava/util/Hashtable;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 322
    :try_start_5
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->createOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz v1, :cond_c

    .line 324
    :try_start_6
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->saveProperties(Ljava/util/Hashtable;Ljava/io/OutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    if-eqz v1, :cond_b

    .line 322
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_3
    throw v0

    :cond_c
    :goto_4
    if-eqz v1, :cond_d

    .line 326
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    .line 327
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->failonerror:Z

    if-nez v1, :cond_e

    .line 330
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->log(Ljava/lang/String;I)V

    :cond_d
    :goto_5
    return-void

    .line 328
    :cond_e
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method protected jdkSaveProperties(Ljava/util/Properties;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Failed to close output stream"

    .line 474
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 480
    :try_start_1
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 482
    :catch_0
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 476
    :try_start_2
    new-instance p3, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p3, p1, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz p2, :cond_1

    .line 480
    :try_start_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 482
    :catch_2
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->log(Ljava/lang/String;)V

    .line 485
    :cond_1
    :goto_2
    throw p1
.end method

.method protected saveProperties(Ljava/util/Hashtable;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 349
    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1;-><init>(Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;Ljava/util/List;)V

    .line 370
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$$ExternalSyntheticLambda2;-><init>(Ljava/util/Properties;)V

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->forEach(Ljava/util/function/BiConsumer;)V

    const-string p1, "text"

    .line 372
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->format:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Ant properties"

    .line 373
    invoke-virtual {p0, v1, p2, p1}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->jdkSaveProperties(Ljava/util/Properties;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "xml"

    .line 374
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->format:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 375
    invoke-virtual {p0, v1, p2}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->xmlSaveProperties(Ljava/util/Properties;Ljava/io/OutputStream;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDestfile(Ljava/io/File;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->destfile:Ljava/io/File;

    return-void
.end method

.method public setFailOnError(Z)V
    .locals 0

    .line 171
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->failonerror:Z

    return-void
.end method

.method public setFormat(Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$FormatAttribute;)V
    .locals 0

    .line 236
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$FormatAttribute;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->format:Ljava/lang/String;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->prefix:Ljava/lang/String;

    .line 190
    new-instance v0, Lorg/apache/tools/ant/types/PropertySet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/PropertySet;-><init>()V

    .line 191
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/PropertySet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 192
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PropertySet;->appendPrefix(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->addPropertyset(Lorg/apache/tools/ant/types/PropertySet;)V

    :cond_0
    return-void
.end method

.method public setRegex(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->regex:Ljava/lang/String;

    .line 215
    new-instance v0, Lorg/apache/tools/ant/types/PropertySet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/PropertySet;-><init>()V

    .line 216
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/PropertySet;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 217
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PropertySet;->appendRegex(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->addPropertyset(Lorg/apache/tools/ant/types/PropertySet;)V

    :cond_0
    return-void
.end method

.method public setSrcfile(Ljava/io/File;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->inFile:Ljava/io/File;

    return-void
.end method

.method protected xmlSaveProperties(Ljava/util/Properties;Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->getDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "properties"

    .line 440
    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 442
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->sortProperties(Ljava/util/Properties;)Ljava/util/List;

    move-result-object p1

    .line 445
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;

    const-string v3, "property"

    .line 446
    invoke-interface {v0, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    const-string v4, "name"

    .line 447
    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;->access$000(Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "value"

    .line 448
    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;->access$100(Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 452
    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/OutputStreamWriter;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string p2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    .line 453
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 454
    new-instance p2, Lorg/apache/tools/ant/util/DOMElementWriter;

    invoke-direct {p2}, Lorg/apache/tools/ant/util/DOMElementWriter;-><init>()V

    const-string v0, "\t"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2, v0}, Lorg/apache/tools/ant/util/DOMElementWriter;->write(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;)V

    .line 455
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    :try_start_2
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p2

    .line 452
    :try_start_3
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 457
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Unable to write XML file"

    invoke-direct {p2, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
