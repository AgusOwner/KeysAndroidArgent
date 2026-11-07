.class public Lorg/apache/tools/ant/ArgumentProcessorRegistry;
.super Ljava/lang/Object;
.source "ArgumentProcessorRegistry.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_ARGUMENT_PROCESSOR_REPOSITORY:Ljava/lang/String; = "ant.argument-processor-repo.debug"

.field private static final SERVICE_ID:Ljava/lang/String; = "META-INF/services/org.apache.tools.ant.ArgumentProcessor"

.field private static instance:Lorg/apache/tools/ant/ArgumentProcessorRegistry;


# instance fields
.field private processors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/ArgumentProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ant.argument-processor-repo.debug"

    .line 52
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->DEBUG:Z

    .line 56
    new-instance v0, Lorg/apache/tools/ant/ArgumentProcessorRegistry;

    invoke-direct {v0}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->instance:Lorg/apache/tools/ant/ArgumentProcessorRegistry;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->processors:Ljava/util/List;

    .line 65
    invoke-direct {p0}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->collectArgumentProcessors()V

    return-void
.end method

.method private collectArgumentProcessors()V
    .locals 4

    .line 74
    :try_start_0
    invoke-static {}, Lorg/apache/tools/ant/util/LoaderUtils;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "META-INF/services/org.apache.tools.ant.ArgumentProcessor"

    if-eqz v0, :cond_0

    .line 76
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    .line 77
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    const/4 v3, 0x0

    .line 78
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 79
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->getProcessorByService(Ljava/io/InputStream;)Lorg/apache/tools/ant/ArgumentProcessor;

    move-result-object v2

    .line 80
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->registerArgumentProcessor(Lorg/apache/tools/ant/ArgumentProcessor;)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->getProcessorByService(Ljava/io/InputStream;)Lorg/apache/tools/ant/ArgumentProcessor;

    move-result-object v0

    .line 87
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->registerArgumentProcessor(Lorg/apache/tools/ant/ArgumentProcessor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 90
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to load ArgumentProcessor from service META-INF/services/org.apache.tools.ant.ArgumentProcessor ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    sget-boolean v1, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 94
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public static getInstance()Lorg/apache/tools/ant/ArgumentProcessorRegistry;
    .locals 1

    .line 61
    sget-object v0, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->instance:Lorg/apache/tools/ant/ArgumentProcessorRegistry;

    return-object v0
.end method

.method private getProcessor(Ljava/lang/Class;)Lorg/apache/tools/ant/ArgumentProcessor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/tools/ant/ArgumentProcessor;",
            ">;)",
            "Lorg/apache/tools/ant/ArgumentProcessor;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 125
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/ArgumentProcessor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 127
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The argument processor class"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " could not be instantiated with a default constructor"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getProcessor(Ljava/lang/String;)Lorg/apache/tools/ant/ArgumentProcessor;
    .locals 4

    .line 113
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 114
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->getProcessor(Ljava/lang/Class;)Lorg/apache/tools/ant/ArgumentProcessor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 116
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Argument processor class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " was not found"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getProcessorByService(Ljava/io/InputStream;)Lorg/apache/tools/ant/ArgumentProcessor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 149
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->getProcessor(Ljava/lang/String;)Lorg/apache/tools/ant/ArgumentProcessor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object p1

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 148
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method


# virtual methods
.method public getProcessors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/ArgumentProcessor;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->processors:Ljava/util/List;

    return-object v0
.end method

.method public registerArgumentProcessor(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/tools/ant/ArgumentProcessor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->getProcessor(Ljava/lang/Class;)Lorg/apache/tools/ant/ArgumentProcessor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->registerArgumentProcessor(Lorg/apache/tools/ant/ArgumentProcessor;)V

    return-void
.end method

.method public registerArgumentProcessor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->getProcessor(Ljava/lang/String;)Lorg/apache/tools/ant/ArgumentProcessor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->registerArgumentProcessor(Lorg/apache/tools/ant/ArgumentProcessor;)V

    return-void
.end method

.method public registerArgumentProcessor(Lorg/apache/tools/ant/ArgumentProcessor;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->processors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    sget-boolean v0, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 141
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Argument processor "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " registered."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
