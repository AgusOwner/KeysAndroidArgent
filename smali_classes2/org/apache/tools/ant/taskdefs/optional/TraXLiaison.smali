.class public Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;
.super Ljava/lang/Object;
.source "TraXLiaison.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/XSLTLiaison4;
.implements Ljavax/xml/transform/ErrorListener;
.implements Lorg/apache/tools/ant/taskdefs/XSLTLoggerAware;


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private final attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private entityResolver:Lorg/xml/sax/EntityResolver;

.field private factoryName:Ljava/lang/String;

.field private final features:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private logger:Lorg/apache/tools/ant/taskdefs/XSLTLogger;

.field private final outputProperties:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final params:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private project:Lorg/apache/tools/ant/Project;

.field private stylesheet:Lorg/apache/tools/ant/types/Resource;

.field private suppressWarnings:Z

.field private templates:Ljavax/xml/transform/Templates;

.field private templatesModTime:J

.field private tfactory:Ljavax/xml/transform/TransformerFactory;

.field private traceConfiguration:Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;

.field private transformer:Ljavax/xml/transform/Transformer;

.field private uriResolver:Ljavax/xml/transform/URIResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->factoryName:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->tfactory:Ljavax/xml/transform/TransformerFactory;

    .line 124
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->outputProperties:Ljava/util/Vector;

    .line 127
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->params:Ljava/util/Hashtable;

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->attributes:Ljava/util/List;

    .line 133
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->features:Ljava/util/Map;

    const/4 v1, 0x0

    .line 136
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->suppressWarnings:Z

    .line 139
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->traceConfiguration:Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;

    return-void
.end method

.method private applyReflectionHackForExtensionMethods()V
    .locals 3

    const-string v0, "9"

    .line 637
    invoke-static {v0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isAtLeastJavaVersion(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->tfactory:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "_isNotSecureProcessing"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 640
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 641
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->tfactory:Ljavax/xml/transform/TransformerFactory;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 643
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->project:Lorg/apache/tools/ant/Project;

    if-eqz v1, :cond_0

    .line 644
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void
.end method

.method private createTransformer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->templates:Ljavax/xml/transform/Templates;

    if-nez v0, :cond_0

    .line 311
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->readTemplates()V

    .line 314
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->templates:Ljavax/xml/transform/Templates;

    invoke-interface {v0}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->transformer:Ljavax/xml/transform/Transformer;

    .line 317
    invoke-virtual {v0, p0}, Ljavax/xml/transform/Transformer;->setErrorListener(Ljavax/xml/transform/ErrorListener;)V

    .line 318
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->uriResolver:Ljavax/xml/transform/URIResolver;

    if-eqz v0, :cond_1

    .line 319
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->transformer:Ljavax/xml/transform/Transformer;

    invoke-virtual {v1, v0}, Ljavax/xml/transform/Transformer;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    .line 321
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->outputProperties:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 322
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->transformer:Ljavax/xml/transform/Transformer;

    aget-object v2, v1, v2

    aget-object v1, v1, v3

    invoke-virtual {v4, v2, v1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->traceConfiguration:Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;

    if-eqz v0, :cond_6

    .line 326
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->transformer:Ljavax/xml/transform/Transformer;

    .line 327
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.apache.xalan.transformer.TransformerImpl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    const-string v0, "org.apache.tools.ant.taskdefs.optional.Xalan2TraceSupport"

    .line 332
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 333
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 330
    invoke-static {v0, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Class;

    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/XSLTTraceSupport;

    .line 336
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->transformer:Ljavax/xml/transform/Transformer;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->traceConfiguration:Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;

    invoke-interface {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/XSLTTraceSupport;->configureTrace(Ljavax/xml/transform/Transformer;Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to enable tracing because of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->project:Lorg/apache/tools/ant/Project;

    if-eqz v1, :cond_3

    .line 340
    invoke-virtual {v1, v0, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 342
    :cond_3
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 346
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not enabling trace support for transformer implementation"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->transformer:Ljavax/xml/transform/Transformer;

    .line 347
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->project:Lorg/apache/tools/ant/Project;

    if-eqz v1, :cond_5

    .line 349
    invoke-virtual {v1, v0, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 351
    :cond_5
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private getFactory()Ljavax/xml/transform/TransformerFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Failed to load "

    .line 373
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->tfactory:Ljavax/xml/transform/TransformerFactory;

    if-eqz v1, :cond_0

    return-object v1

    .line 377
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->factoryName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 378
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->tfactory:Ljavax/xml/transform/TransformerFactory;

    goto :goto_2

    .line 385
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 386
    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 384
    invoke-static {v1, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_5

    .line 388
    :catch_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->factoryName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " via the configured classpath, will try Ant\'s classpath instead."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->logger:Lorg/apache/tools/ant/taskdefs/XSLTLogger;

    if-eqz v1, :cond_2

    .line 392
    invoke-interface {v1, v0}, Lorg/apache/tools/ant/taskdefs/XSLTLogger;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->project:Lorg/apache/tools/ant/Project;

    if-eqz v1, :cond_3

    .line 394
    invoke-virtual {v1, v0, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 396
    :cond_3
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    .line 401
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->factoryName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_4
    new-array v1, v2, [Ljava/lang/Class;

    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/transform/TransformerFactory;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->tfactory:Ljavax/xml/transform/TransformerFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 409
    :goto_2
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->applyReflectionHackForExtensionMethods()V

    .line 411
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->tfactory:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {v0, p0}, Ljavax/xml/transform/TransformerFactory;->setErrorListener(Ljavax/xml/transform/ErrorListener;)V

    .line 414
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 415
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->tfactory:Ljavax/xml/transform/TransformerFactory;

    aget-object v5, v1, v2

    check-cast v5, Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v4, v5, v1}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 418
    :cond_5
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->features:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 420
    :try_start_2
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->tfactory:Ljavax/xml/transform/TransformerFactory;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v3, v1}, Ljavax/xml/transform/TransformerFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 422
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 426
    :cond_6
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->uriResolver:Ljavax/xml/transform/URIResolver;

    if-eqz v0, :cond_7

    .line 427
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->tfactory:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {v1, v0}, Ljavax/xml/transform/TransformerFactory;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    .line 429
    :cond_7
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->tfactory:Ljavax/xml/transform/TransformerFactory;

    return-object v0

    .line 405
    :goto_5
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getSource(Ljava/io/InputStream;Ljava/io/File;)Ljavax/xml/transform/Source;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->entityResolver:Lorg/xml/sax/EntityResolver;

    if-eqz v0, :cond_1

    .line 221
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->getFactory()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    const-string v1, "http://javax.xml.transform.sax.SAXSource/feature"

    invoke-virtual {v0, v1}, Ljavax/xml/transform/TransformerFactory;->getFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 223
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 224
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->entityResolver:Lorg/xml/sax/EntityResolver;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 226
    new-instance v1, Ljavax/xml/transform/sax/SAXSource;

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0, v2}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V

    goto :goto_0

    .line 228
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "xcatalog specified, but parser doesn\'t support SAX"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 234
    :cond_1
    new-instance v1, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v1, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    .line 236
    :goto_0
    invoke-static {p2}, Lorg/apache/tools/ant/util/JAXPUtils;->getSystemId(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljavax/xml/transform/Source;->setSystemId(Ljava/lang/String;)V

    return-object v1
.end method

.method private getSource(Ljava/io/InputStream;Lorg/apache/tools/ant/types/Resource;)Ljavax/xml/transform/Source;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->entityResolver:Lorg/xml/sax/EntityResolver;

    if-eqz v0, :cond_1

    .line 247
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->getFactory()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    const-string v1, "http://javax.xml.transform.sax.SAXSource/feature"

    invoke-virtual {v0, v1}, Ljavax/xml/transform/TransformerFactory;->getFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 249
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 250
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->entityResolver:Lorg/xml/sax/EntityResolver;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 252
    new-instance v1, Ljavax/xml/transform/sax/SAXSource;

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0, v2}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V

    goto :goto_0

    .line 254
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "xcatalog specified, but parser doesn\'t support SAX"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 260
    :cond_1
    new-instance v1, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v1, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    .line 265
    :goto_0
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->resourceToURI(Lorg/apache/tools/ant/types/Resource;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljavax/xml/transform/Source;->setSystemId(Ljava/lang/String;)V

    return-object v1
.end method

.method private logError(Ljavax/xml/transform/TransformerException;Ljava/lang/String;)V
    .locals 5

    .line 549
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->logger:Lorg/apache/tools/ant/taskdefs/XSLTLogger;

    if-nez v0, :cond_0

    return-void

    .line 553
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 554
    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 556
    invoke-interface {v1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "file:"

    .line 559
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 560
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/util/FileUtils;->fromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 562
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v2, "Unknown file"

    .line 564
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    :goto_0
    invoke-interface {v1}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    const-string v4, ":"

    .line 568
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 570
    invoke-interface {v1}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 572
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, ": "

    .line 577
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "! "

    .line 579
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_4

    const-string p2, " Cause: "

    .line 582
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 586
    :cond_4
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->logger:Lorg/apache/tools/ant/taskdefs/XSLTLogger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/tools/ant/taskdefs/XSLTLogger;->log(Ljava/lang/String;)V

    return-void
.end method

.method private readTemplates()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/transform/TransformerConfigurationException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 294
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->stylesheet:Lorg/apache/tools/ant/types/Resource;

    .line 295
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 296
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->stylesheet:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->templatesModTime:J

    .line 297
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->stylesheet:Lorg/apache/tools/ant/types/Resource;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->getSource(Ljava/io/InputStream;Lorg/apache/tools/ant/types/Resource;)Ljavax/xml/transform/Source;

    move-result-object v1

    .line 298
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->getFactory()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljavax/xml/transform/TransformerFactory;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->templates:Ljavax/xml/transform/Templates;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception v1

    .line 294
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private resourceToURI(Lorg/apache/tools/ant/types/Resource;)Ljava/lang/String;
    .locals 1

    .line 270
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    if-eqz v0, :cond_0

    .line 272
    sget-object p1, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/util/FileUtils;->toURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 274
    :cond_0
    const-class v0, Lorg/apache/tools/ant/types/resources/URLProvider;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/URLProvider;

    if-eqz v0, :cond_1

    .line 276
    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/URLProvider;->getURL()Ljava/net/URL;

    move-result-object p1

    .line 277
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 279
    :cond_1
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setTransformationParameters()V
    .locals 2

    .line 361
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->params:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison$$ExternalSyntheticLambda3;-><init>(Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 510
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->params:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 500
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->params:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public configure(Lorg/apache/tools/ant/taskdefs/XSLTProcess;)V
    .locals 3

    .line 608
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->project:Lorg/apache/tools/ant/Project;

    .line 609
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getFactory()Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->setFactory(Ljava/lang/String;)V

    .line 613
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;->getAttributes()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/util/StreamUtils;->enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;)V

    .line 614
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 615
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;->getFeatures()Ljava/lang/Iterable;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;)V

    .line 616
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 619
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getXMLCatalog()Lorg/apache/tools/ant/types/XMLCatalog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 622
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 623
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    .line 627
    :cond_1
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getOutputProperties()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/StreamUtils;->enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;)V

    .line 628
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 630
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getSuppressWarnings()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->suppressWarnings:Z

    .line 632
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess;->getTraceConfiguration()Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->traceConfiguration:Lorg/apache/tools/ant/taskdefs/XSLTProcess$TraceConfiguration;

    return-void
.end method

.method public error(Ljavax/xml/transform/TransformerException;)V
    .locals 1

    const-string v0, "Error"

    .line 526
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->logError(Ljavax/xml/transform/TransformerException;Ljava/lang/String;)V

    return-void
.end method

.method public fatalError(Ljavax/xml/transform/TransformerException;)V
    .locals 3

    const-string v0, "Fatal Error"

    .line 534
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->logError(Ljavax/xml/transform/TransformerException;Ljava/lang/String;)V

    .line 535
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fatal error during transformation using "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->stylesheet:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getMessageAndLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected getSystemId(Ljava/io/File;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 598
    invoke-static {p1}, Lorg/apache/tools/ant/util/JAXPUtils;->getSystemId(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$configure$1$org-apache-tools-ant-taskdefs-optional-TraXLiaison(Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;)V
    .locals 1

    .line 614
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Attribute;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$configure$2$org-apache-tools-ant-taskdefs-optional-TraXLiaison(Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Feature;)V
    .locals 1

    .line 616
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Feature;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Feature;->getValue()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method synthetic lambda$configure$3$org-apache-tools-ant-taskdefs-optional-TraXLiaison(Lorg/apache/tools/ant/taskdefs/XSLTProcess$OutputProperty;)V
    .locals 1

    .line 628
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$OutputProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$OutputProperty;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setTransformationParameters$0$org-apache-tools-ant-taskdefs-optional-TraXLiaison(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 361
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->transformer:Ljavax/xml/transform/Transformer;

    invoke-virtual {v0, p1, p2}, Ljavax/xml/transform/Transformer;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 450
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 451
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->attributes:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-void
.end method

.method public setFactory(Ljava/lang/String;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->factoryName:Ljava/lang/String;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1

    .line 461
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->features:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLogger(Lorg/apache/tools/ant/taskdefs/XSLTLogger;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->logger:Lorg/apache/tools/ant/taskdefs/XSLTLogger;

    return-void
.end method

.method public setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 474
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 475
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->outputProperties:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public setStylesheet(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>()V

    .line 155
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/FileResource;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 156
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;->setFile(Ljava/io/File;)V

    .line 157
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->setStylesheet(Lorg/apache/tools/ant/types/Resource;)V

    return-void
.end method

.method public setStylesheet(Lorg/apache/tools/ant/types/Resource;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->stylesheet:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 168
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->transformer:Ljavax/xml/transform/Transformer;

    .line 171
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Resource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->templatesModTime:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->templates:Ljavax/xml/transform/Templates;

    .line 176
    :cond_1
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->stylesheet:Lorg/apache/tools/ant/types/Resource;

    return-void
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->uriResolver:Ljavax/xml/transform/URIResolver;

    return-void
.end method

.method public transform(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->transformer:Ljavax/xml/transform/Transformer;

    if-nez v0, :cond_0

    .line 187
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->createTransformer()V

    .line 192
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 193
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 194
    :try_start_1
    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v2, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 196
    invoke-static {p2}, Lorg/apache/tools/ant/util/JAXPUtils;->getSystemId(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljavax/xml/transform/stream/StreamResult;->setSystemId(Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->setTransformationParameters()V

    .line 201
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->transformer:Ljavax/xml/transform/Transformer;

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->getSource(Ljava/io/InputStream;Ljava/io/File;)Ljavax/xml/transform/Source;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 192
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method public warning(Ljavax/xml/transform/TransformerException;)V
    .locals 1

    .line 543
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->suppressWarnings:Z

    if-nez v0, :cond_0

    const-string v0, "Warning"

    .line 544
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/TraXLiaison;->logError(Ljavax/xml/transform/TransformerException;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
