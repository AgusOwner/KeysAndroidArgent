.class public Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;
.super Ljava/lang/Object;
.source "IPlanetEjbc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;,
        Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;,
        Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcException;,
        Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$RedirectOutput;,
        Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$Classname;
    }
.end annotation


# static fields
.field private static final ENTITY_BEAN:Ljava/lang/String; = "entity"

.field private static final MAX_NUM_ARGS:I = 0x8

.field private static final MIN_NUM_ARGS:I = 0x2

.field private static final NUM_CLASSES_WITHOUT_IIOP:I = 0x9

.field private static final NUM_CLASSES_WITH_IIOP:I = 0xf

.field private static final STATEFUL_SESSION:Ljava/lang/String; = "stateful"

.field private static final STATELESS_SESSION:Ljava/lang/String; = "stateless"


# instance fields
.field private classpath:Ljava/lang/String;

.field private classpathElements:[Ljava/lang/String;

.field private debugOutput:Z

.field private destDirectory:Ljava/io/File;

.field private displayName:Ljava/lang/String;

.field private ejbFiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;

.field private iasDescriptor:Ljava/io/File;

.field private iasHomeDir:Ljava/io/File;

.field private parser:Ljavax/xml/parsers/SAXParser;

.field private retainSource:Z

.field private stdDescriptor:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljavax/xml/parsers/SAXParser;)V
    .locals 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->retainSource:Z

    .line 100
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->debugOutput:Z

    .line 107
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;-><init>(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->handler:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;

    .line 116
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->ejbFiles:Ljava/util/Hashtable;

    .line 142
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->stdDescriptor:Ljava/io/File;

    .line 143
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->iasDescriptor:Ljava/io/File;

    .line 144
    iput-object p3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->destDirectory:Ljava/io/File;

    .line 145
    iput-object p4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->classpath:Ljava/lang/String;

    .line 146
    iput-object p5, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->parser:Ljavax/xml/parsers/SAXParser;

    if-eqz p4, :cond_0

    .line 153
    new-instance p1, Ljava/util/StringTokenizer;

    sget-object p2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {p1, p4, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p2

    .line 156
    invoke-static {p1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->classpathElements:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;)Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 71
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->displayName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;)Ljava/util/Hashtable;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->ejbFiles:Ljava/util/Hashtable;

    return-object p0
.end method

.method private buildArgumentList(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;)[Ljava/lang/String;
    .locals 3

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 502
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->debugOutput:Z

    if-eqz v1, :cond_0

    const-string v1, "-debug"

    .line 503
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->getBeantype()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stateless"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "-sl"

    .line 508
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 509
    :cond_1
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->getBeantype()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stateful"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "-sf"

    .line 510
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->getIiop()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "-iiop"

    .line 514
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_3
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->getCmp()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "-cmp"

    .line 518
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_4
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->retainSource:Z

    if-eqz v1, :cond_5

    const-string v1, "-gs"

    .line 522
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_5
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->getHasession()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "-fo"

    .line 526
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v1, "-classpath"

    .line 531
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->classpath:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "-d"

    .line 534
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->destDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->getHome()Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$Classname;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$Classname;->getQualifiedClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->getRemote()Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$Classname;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$Classname;->getQualifiedClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->getImplementation()Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$Classname;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$Classname;->getQualifiedClassName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 542
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private callEjbc([Ljava/lang/String;)V
    .locals 3

    .line 397
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->iasHomeDir:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 400
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->iasHomeDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ejbc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    .line 406
    invoke-static {v1, p1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->log(Ljava/lang/String;)V

    .line 416
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    .line 417
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$RedirectOutput;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$RedirectOutput;-><init>(Ljava/io/InputStream;)V

    .line 418
    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$RedirectOutput;

    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$RedirectOutput;-><init>(Ljava/io/InputStream;)V

    .line 419
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$RedirectOutput;->start()V

    .line 420
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$RedirectOutput;->start()V

    .line 421
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    .line 422
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "An IOException has occurred while trying to execute ejbc."

    .line 424
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->log(Ljava/lang/String;)V

    .line 425
    invoke-static {p1}, Lorg/apache/tools/ant/util/StringUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->log(Ljava/lang/String;)V

    :catch_1
    :goto_1
    return-void
.end method

.method private getEjbs()[Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->parser:Ljavax/xml/parsers/SAXParser;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->stdDescriptor:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->handler:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/HandlerBase;)V

    .line 484
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->parser:Ljavax/xml/parsers/SAXParser;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->iasDescriptor:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->handler:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/HandlerBase;)V

    .line 485
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->handler:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->getEjbs()[Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getCmpDescriptors$0(I)[Ljava/lang/String;
    .locals 0

    .line 235
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 552
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->debugOutput:Z

    if-eqz v0, :cond_0

    .line 553
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 12

    const-string v0, ")."

    .line 255
    array-length v1, p0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_8

    array-length v1, p0

    const/16 v3, 0x8

    if-le v1, v3, :cond_0

    goto/16 :goto_5

    .line 260
    :cond_0
    new-instance v5, Ljava/io/File;

    array-length v1, p0

    sub-int/2addr v1, v2

    aget-object v1, p0, v1

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    new-instance v6, Ljava/io/File;

    array-length v1, p0

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    aget-object v1, p0, v1

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v4, 0x0

    move v7, v4

    move v10, v7

    move v11, v10

    move-object v4, v1

    .line 263
    :goto_0
    array-length v8, p0

    sub-int/2addr v8, v2

    if-ge v7, v8, :cond_5

    const-string v8, "-classpath"

    .line 264
    aget-object v9, p0, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v7, v7, 0x1

    .line 265
    aget-object v1, p0, v7

    goto :goto_1

    :cond_1
    const-string v8, "-d"

    .line 266
    aget-object v9, p0, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 267
    new-instance v4, Ljava/io/File;

    add-int/lit8 v7, v7, 0x1

    aget-object v8, p0, v7

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v8, "-debug"

    .line 268
    aget-object v9, p0, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v10, v3

    goto :goto_1

    :cond_3
    const-string v8, "-keepsource"

    .line 270
    aget-object v9, p0, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v11, v3

    :goto_1
    add-int/2addr v7, v3

    goto :goto_0

    .line 273
    :cond_4
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->usage()V

    return-void

    :cond_5
    if-nez v1, :cond_6

    .line 280
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object p0

    const-string v1, "java.class.path"

    .line 281
    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v8, p0

    goto :goto_2

    :cond_6
    move-object v8, v1

    :goto_2
    if-nez v4, :cond_7

    .line 289
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object p0

    .line 290
    new-instance v1, Ljava/io/File;

    const-string v2, "user.dir"

    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v1

    goto :goto_3

    :cond_7
    move-object v7, v4

    .line 294
    :goto_3
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object p0

    .line 295
    invoke-virtual {p0, v3}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 297
    :try_start_0
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 307
    new-instance p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljavax/xml/parsers/SAXParser;)V

    .line 309
    invoke-virtual {p0, v10}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->setDebugOutput(Z)V

    .line 310
    invoke-virtual {p0, v11}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->setRetainSource(Z)V

    .line 314
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->execute()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 322
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "An error has occurred while executing the ejbc utility ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 322
    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    :catch_1
    move-exception p0

    .line 319
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "A SAXException has occurred while reading the XML descriptors ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 319
    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    :catch_2
    move-exception p0

    .line 316
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "An IOException has occurred while reading the XML descriptors ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 316
    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_4
    return-void

    :catch_3
    move-exception p0

    .line 300
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "An exception was generated while trying to "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 301
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "create a new SAXParser."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    .line 256
    :cond_8
    :goto_5
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->usage()V

    return-void
.end method

.method private static usage()V
    .locals 2

    .line 331
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "java org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc \\"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 332
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  [OPTIONS] [EJB 1.1 descriptor] [iAS EJB descriptor]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 333
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 334
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Where OPTIONS are:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 335
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -debug -- for additional debugging output"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 336
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -keepsource -- to retain Java source files generated"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 337
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -classpath [classpath] -- classpath used for compilation"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 338
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -d [destination directory] -- directory for compiled classes"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 339
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 340
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "If a classpath is not specified, the system classpath"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 341
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "will be used.  If a destination directory is not specified,"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 342
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "the current working directory will be used (classes will"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 343
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "still be placed in subfolders which correspond to their"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 344
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "package name)."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 345
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 346
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "The EJB home interface, remote interface, and implementation"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 347
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "class must be found in the destination directory.  In"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 348
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "addition, the destination will look for the stubs and skeletons"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 349
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "in the destination directory to ensure they are up to date."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected checkConfiguration()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcException;
        }
    .end annotation

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->stdDescriptor:Ljava/io/File;

    if-nez v1, :cond_0

    const-string v1, "A standard XML descriptor file must be specified.  "

    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->iasDescriptor:Ljava/io/File;

    if-nez v1, :cond_1

    const-string v1, "An iAS-specific XML descriptor file must be specified.  "

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->classpath:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "A classpath must be specified.    "

    .line 447
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->parser:Ljavax/xml/parsers/SAXParser;

    if-nez v1, :cond_3

    const-string v1, "An XML parser must be specified.    "

    .line 450
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    :cond_3
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->destDirectory:Ljava/io/File;

    if-nez v1, :cond_4

    const-string v1, "A destination directory must be specified.  "

    .line 454
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 455
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "The destination directory specified does not exist.  "

    .line 456
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 457
    :cond_5
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->destDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "The destination specified is not a directory.  "

    .line 458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    :cond_6
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_7

    return-void

    .line 462
    :cond_7
    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcException;-><init>(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;Ljava/lang/String;)V

    throw v1
.end method

.method public execute()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 366
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->checkConfiguration()V

    .line 368
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->getEjbs()[Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;

    move-result-object v0

    .line 370
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    const-string v5, "EJBInfo..."

    .line 371
    invoke-direct {p0, v5}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->log(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->log(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 375
    :cond_0
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 376
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->destDirectory:Ljava/io/File;

    invoke-static {v3, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->access$000(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;Ljava/io/File;)V

    .line 378
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->destDirectory:Ljava/io/File;

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->mustBeRecompiled(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " must be recompiled using ejbc."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->log(Ljava/lang/String;)V

    .line 380
    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->buildArgumentList(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->callEjbc([Ljava/lang/String;)V

    goto :goto_2

    .line 382
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is up to date."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->log(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public getCmpDescriptors()[Ljava/lang/String;
    .locals 2

    .line 234
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->handler:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->getEjbs()[Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$$ExternalSyntheticLambda1;-><init>()V

    .line 235
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEjbFiles()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->ejbFiles:Ljava/util/Hashtable;

    return-object v0
.end method

.method public registerDTD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->handler:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDebugOutput(Z)V
    .locals 0

    .line 179
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->debugOutput:Z

    return-void
.end method

.method public setIasHomeDir(Ljava/io/File;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->iasHomeDir:Ljava/io/File;

    return-void
.end method

.method public setRetainSource(Z)V
    .locals 0

    .line 169
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->retainSource:Z

    return-void
.end method
