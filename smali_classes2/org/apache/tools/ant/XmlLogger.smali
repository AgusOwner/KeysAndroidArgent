.class public Lorg/apache/tools/ant/XmlLogger;
.super Ljava/lang/Object;
.source "XmlLogger.java"

# interfaces
.implements Lorg/apache/tools/ant/BuildLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/XmlLogger$TimedElement;
    }
.end annotation


# static fields
.field private static final BUILD_TAG:Ljava/lang/String; = "build"

.field private static final ERROR_ATTR:Ljava/lang/String; = "error"

.field private static final LOCATION_ATTR:Ljava/lang/String; = "location"

.field private static final MESSAGE_TAG:Ljava/lang/String; = "message"

.field private static final NAME_ATTR:Ljava/lang/String; = "name"

.field private static final PRIORITY_ATTR:Ljava/lang/String; = "priority"

.field private static final STACKTRACE_TAG:Ljava/lang/String; = "stacktrace"

.field private static final TARGET_TAG:Ljava/lang/String; = "target"

.field private static final TASK_TAG:Ljava/lang/String; = "task"

.field private static final TIME_ATTR:Ljava/lang/String; = "time"

.field private static builder:Ljavax/xml/parsers/DocumentBuilder;


# instance fields
.field private buildElement:Lorg/apache/tools/ant/XmlLogger$TimedElement;

.field private doc:Lorg/w3c/dom/Document;

.field private msgOutputLevel:I

.field private outStream:Ljava/io/PrintStream;

.field private targets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/tools/ant/Target;",
            "Lorg/apache/tools/ant/XmlLogger$TimedElement;",
            ">;"
        }
    .end annotation
.end field

.field private tasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/tools/ant/Task;",
            "Lorg/apache/tools/ant/XmlLogger$TimedElement;",
            ">;"
        }
    .end annotation
.end field

.field private threadStacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "Ljava/util/Stack<",
            "Lorg/apache/tools/ant/XmlLogger$TimedElement;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    invoke-static {}, Lorg/apache/tools/ant/XmlLogger;->getDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/XmlLogger;->builder:Ljavax/xml/parsers/DocumentBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 60
    iput v0, p0, Lorg/apache/tools/ant/XmlLogger;->msgOutputLevel:I

    .line 111
    sget-object v0, Lorg/apache/tools/ant/XmlLogger;->builder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->doc:Lorg/w3c/dom/Document;

    .line 114
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->tasks:Ljava/util/Map;

    .line 117
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->targets:Ljava/util/Map;

    .line 123
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->threadStacks:Ljava/util/Map;

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->buildElement:Lorg/apache/tools/ant/XmlLogger$TimedElement;

    return-void
.end method

.method private static getDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .locals 2

    .line 74
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

    .line 76
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getProperty(Lorg/apache/tools/ant/BuildEvent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    return-object p3
.end method

.method private getStack()Ljava/util/Stack;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lorg/apache/tools/ant/XmlLogger$TimedElement;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->threadStacks:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/XmlLogger$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/apache/tools/ant/XmlLogger$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    return-object v0
.end method

.method private getTaskElement(Lorg/apache/tools/ant/Task;)Lorg/apache/tools/ant/XmlLogger$TimedElement;
    .locals 3

    .line 347
    iget-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->tasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/XmlLogger$TimedElement;

    if-eqz v0, :cond_0

    return-object v0

    .line 351
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/apache/tools/ant/XmlLogger;->tasks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 352
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/Task;

    .line 353
    instance-of v2, v1, Lorg/apache/tools/ant/UnknownElement;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lorg/apache/tools/ant/UnknownElement;

    invoke-virtual {v2}, Lorg/apache/tools/ant/UnknownElement;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 354
    iget-object p1, p0, Lorg/apache/tools/ant/XmlLogger;->tasks:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/XmlLogger$TimedElement;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic lambda$getStack$0(Ljava/lang/Thread;)Ljava/util/Stack;
    .locals 0

    .line 219
    new-instance p0, Ljava/util/Stack;

    invoke-direct {p0}, Ljava/util/Stack;-><init>()V

    return-object p0
.end method

.method private synchronizedAppend(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .locals 0

    .line 473
    monitor-enter p1

    .line 474
    :try_start_0
    invoke-interface {p1, p2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 475
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method


# virtual methods
.method public buildFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 5

    const-string v0, "<?xml-stylesheet type=\"text/xsl\" href=\""

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/tools/ant/XmlLogger;->buildElement:Lorg/apache/tools/ant/XmlLogger$TimedElement;

    invoke-static {v3}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$100(Lorg/apache/tools/ant/XmlLogger$TimedElement;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 169
    iget-object v3, p0, Lorg/apache/tools/ant/XmlLogger;->buildElement:Lorg/apache/tools/ant/XmlLogger$TimedElement;

    invoke-static {v3}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v3

    const-string v4, "time"

    invoke-static {v1, v2}, Lorg/apache/tools/ant/DefaultLogger;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getException()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lorg/apache/tools/ant/XmlLogger;->buildElement:Lorg/apache/tools/ant/XmlLogger$TimedElement;

    invoke-static {v1}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "error"

    invoke-interface {v1, v3, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getException()Ljava/lang/Throwable;

    move-result-object v1

    .line 176
    iget-object v2, p0, Lorg/apache/tools/ant/XmlLogger;->doc:Lorg/w3c/dom/Document;

    invoke-static {v1}, Lorg/apache/tools/ant/util/StringUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v1

    .line 177
    iget-object v2, p0, Lorg/apache/tools/ant/XmlLogger;->doc:Lorg/w3c/dom/Document;

    const-string v3, "stacktrace"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 178
    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 179
    iget-object v1, p0, Lorg/apache/tools/ant/XmlLogger;->buildElement:Lorg/apache/tools/ant/XmlLogger$TimedElement;

    invoke-static {v1}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lorg/apache/tools/ant/XmlLogger;->synchronizedAppend(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    :cond_0
    const-string v1, "XmlLogger.file"

    const-string v2, "log.xml"

    .line 181
    invoke-direct {p0, p1, v1, v2}, Lorg/apache/tools/ant/XmlLogger;->getProperty(Lorg/apache/tools/ant/BuildEvent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ant.XmlLogger.stylesheet.uri"

    const-string v3, "log.xsl"

    .line 182
    invoke-direct {p0, p1, v2, v3}, Lorg/apache/tools/ant/XmlLogger;->getProperty(Lorg/apache/tools/ant/BuildEvent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 185
    :try_start_0
    iget-object v2, p0, Lorg/apache/tools/ant/XmlLogger;->outStream:Ljava/io/PrintStream;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    new-array v2, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v4, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"

    .line 187
    invoke-virtual {v1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\"?>\n\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 192
    :cond_2
    new-instance p1, Lorg/apache/tools/ant/util/DOMElementWriter;

    invoke-direct {p1}, Lorg/apache/tools/ant/util/DOMElementWriter;-><init>()V

    iget-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->buildElement:Lorg/apache/tools/ant/XmlLogger$TimedElement;

    invoke-static {v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v4, "\t"

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/apache/tools/ant/util/DOMElementWriter;->write(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;)V

    .line 193
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    const/4 p1, 0x0

    .line 197
    iput-object p1, p0, Lorg/apache/tools/ant/XmlLogger;->buildElement:Lorg/apache/tools/ant/XmlLogger$TimedElement;

    return-void

    :catchall_0
    move-exception p1

    .line 184
    :try_start_5
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v2, :cond_4

    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    .line 195
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Unable to write log file"

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public buildStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 2

    .line 154
    new-instance p1, Lorg/apache/tools/ant/XmlLogger$TimedElement;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;-><init>(Lorg/apache/tools/ant/XmlLogger$1;)V

    iput-object p1, p0, Lorg/apache/tools/ant/XmlLogger;->buildElement:Lorg/apache/tools/ant/XmlLogger$TimedElement;

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$102(Lorg/apache/tools/ant/XmlLogger$TimedElement;J)J

    .line 156
    iget-object p1, p0, Lorg/apache/tools/ant/XmlLogger;->buildElement:Lorg/apache/tools/ant/XmlLogger$TimedElement;

    iget-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->doc:Lorg/w3c/dom/Document;

    const-string v1, "build"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$202(Lorg/apache/tools/ant/XmlLogger$TimedElement;Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    return-void
.end method

.method public getMessageOutputLevel()I
    .locals 1

    .line 437
    iget v0, p0, Lorg/apache/tools/ant/XmlLogger;->msgOutputLevel:I

    return v0
.end method

.method public messageLogged(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 4

    .line 370
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getPriority()I

    move-result v0

    .line 371
    iget v1, p0, Lorg/apache/tools/ant/XmlLogger;->msgOutputLevel:I

    if-le v0, v1, :cond_0

    return-void

    .line 374
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/XmlLogger;->doc:Lorg/w3c/dom/Document;

    const-string v2, "message"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const-string v0, "debug"

    goto :goto_0

    :cond_1
    const-string v0, "info"

    goto :goto_0

    :cond_2
    const-string v0, "warn"

    goto :goto_0

    :cond_3
    const-string v0, "error"

    :goto_0
    const-string v2, "priority"

    .line 391
    invoke-interface {v1, v2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getException()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v2, 0x4

    .line 394
    iget v3, p0, Lorg/apache/tools/ant/XmlLogger;->msgOutputLevel:I

    if-gt v2, v3, :cond_4

    if-eqz v0, :cond_4

    .line 395
    iget-object v2, p0, Lorg/apache/tools/ant/XmlLogger;->doc:Lorg/w3c/dom/Document;

    invoke-static {v0}, Lorg/apache/tools/ant/util/StringUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v0

    .line 396
    iget-object v2, p0, Lorg/apache/tools/ant/XmlLogger;->doc:Lorg/w3c/dom/Document;

    const-string v3, "stacktrace"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 397
    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 398
    iget-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->buildElement:Lorg/apache/tools/ant/XmlLogger$TimedElement;

    invoke-static {v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lorg/apache/tools/ant/XmlLogger;->synchronizedAppend(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    .line 400
    :cond_4
    iget-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->doc:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v0

    .line 401
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 405
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v0

    .line 407
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTarget()Lorg/apache/tools/ant/Target;

    move-result-object p1

    if-eqz v0, :cond_5

    .line 409
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/XmlLogger;->getTaskElement(Lorg/apache/tools/ant/Task;)Lorg/apache/tools/ant/XmlLogger$TimedElement;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_6

    if-eqz p1, :cond_6

    .line 412
    iget-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->targets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/apache/tools/ant/XmlLogger$TimedElement;

    :cond_6
    if-eqz v0, :cond_7

    .line 415
    invoke-static {v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lorg/apache/tools/ant/XmlLogger;->synchronizedAppend(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    goto :goto_2

    .line 417
    :cond_7
    iget-object p1, p0, Lorg/apache/tools/ant/XmlLogger;->buildElement:Lorg/apache/tools/ant/XmlLogger$TimedElement;

    invoke-static {p1}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lorg/apache/tools/ant/XmlLogger;->synchronizedAppend(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    :goto_2
    return-void
.end method

.method public setEmacsMode(Z)V
    .locals 0

    return-void
.end method

.method public setErrorPrintStream(Ljava/io/PrintStream;)V
    .locals 0

    return-void
.end method

.method public setMessageOutputLevel(I)V
    .locals 0

    .line 432
    iput p1, p0, Lorg/apache/tools/ant/XmlLogger;->msgOutputLevel:I

    return-void
.end method

.method public setOutputPrintStream(Ljava/io/PrintStream;)V
    .locals 2

    .line 448
    new-instance v0, Ljava/io/PrintStream;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->outStream:Ljava/io/PrintStream;

    return-void
.end method

.method public targetFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 5

    .line 250
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTarget()Lorg/apache/tools/ant/Target;

    move-result-object p1

    .line 251
    iget-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->targets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/XmlLogger$TimedElement;

    if-eqz v0, :cond_3

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$100(Lorg/apache/tools/ant/XmlLogger$TimedElement;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 254
    invoke-static {v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v3

    const-string v4, "time"

    invoke-static {v1, v2}, Lorg/apache/tools/ant/DefaultLogger;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-direct {p0}, Lorg/apache/tools/ant/XmlLogger;->getStack()Ljava/util/Stack;

    move-result-object v1

    .line 258
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 259
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/XmlLogger$TimedElement;

    if-ne v2, v0, :cond_0

    .line 264
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 265
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/XmlLogger$TimedElement;

    goto :goto_0

    .line 261
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Mismatch - popped element = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finished target element = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 269
    iget-object v1, p0, Lorg/apache/tools/ant/XmlLogger;->buildElement:Lorg/apache/tools/ant/XmlLogger$TimedElement;

    invoke-static {v1}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-static {v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/apache/tools/ant/XmlLogger;->synchronizedAppend(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    goto :goto_1

    .line 271
    :cond_2
    invoke-static {v1}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 272
    invoke-static {v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 271
    invoke-direct {p0, v1, v0}, Lorg/apache/tools/ant/XmlLogger;->synchronizedAppend(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    .line 275
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->targets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public targetStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 4

    .line 232
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTarget()Lorg/apache/tools/ant/Target;

    move-result-object p1

    .line 233
    new-instance v0, Lorg/apache/tools/ant/XmlLogger$TimedElement;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/XmlLogger$TimedElement;-><init>(Lorg/apache/tools/ant/XmlLogger$1;)V

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$102(Lorg/apache/tools/ant/XmlLogger$TimedElement;J)J

    .line 235
    iget-object v1, p0, Lorg/apache/tools/ant/XmlLogger;->doc:Lorg/w3c/dom/Document;

    const-string v2, "target"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$202(Lorg/apache/tools/ant/XmlLogger$TimedElement;Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    .line 236
    invoke-static {v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {p1}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lorg/apache/tools/ant/XmlLogger;->targets:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-direct {p0}, Lorg/apache/tools/ant/XmlLogger;->getStack()Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public taskFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 5

    .line 312
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object p1

    .line 313
    iget-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->tasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/XmlLogger$TimedElement;

    if-eqz v0, :cond_4

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$100(Lorg/apache/tools/ant/XmlLogger$TimedElement;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 318
    invoke-static {v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v3

    const-string v4, "time"

    invoke-static {v1, v2}, Lorg/apache/tools/ant/DefaultLogger;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1}, Lorg/apache/tools/ant/Task;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 322
    iget-object v2, p0, Lorg/apache/tools/ant/XmlLogger;->targets:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/XmlLogger$TimedElement;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 325
    iget-object v1, p0, Lorg/apache/tools/ant/XmlLogger;->buildElement:Lorg/apache/tools/ant/XmlLogger$TimedElement;

    invoke-static {v1}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-static {v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/apache/tools/ant/XmlLogger;->synchronizedAppend(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    goto :goto_1

    .line 327
    :cond_1
    invoke-static {v1}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-static {v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/apache/tools/ant/XmlLogger;->synchronizedAppend(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    .line 329
    :goto_1
    invoke-direct {p0}, Lorg/apache/tools/ant/XmlLogger;->getStack()Ljava/util/Stack;

    move-result-object v1

    .line 330
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 331
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/XmlLogger$TimedElement;

    if-ne v1, v0, :cond_2

    goto :goto_2

    .line 333
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Mismatch - popped element = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finished task element = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 337
    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/apache/tools/ant/XmlLogger;->tasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 315
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown task "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " not in "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/tools/ant/XmlLogger;->tasks:Ljava/util/Map;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public taskStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 5

    .line 288
    new-instance v0, Lorg/apache/tools/ant/XmlLogger$TimedElement;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/XmlLogger$TimedElement;-><init>(Lorg/apache/tools/ant/XmlLogger$1;)V

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$102(Lorg/apache/tools/ant/XmlLogger$TimedElement;J)J

    .line 290
    iget-object v1, p0, Lorg/apache/tools/ant/XmlLogger;->doc:Lorg/w3c/dom/Document;

    const-string v2, "task"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$202(Lorg/apache/tools/ant/XmlLogger$TimedElement;Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    .line 292
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v1

    .line 293
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/Task;->getTaskName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    .line 297
    :cond_0
    invoke-static {v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v3

    const-string v4, "name"

    invoke-interface {v3, v4, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {v0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;->access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tools/ant/Task;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tools/ant/Location;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "location"

    invoke-interface {v2, v3, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object p1, p0, Lorg/apache/tools/ant/XmlLogger;->tasks:Ljava/util/Map;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-direct {p0}, Lorg/apache/tools/ant/XmlLogger;->getStack()Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
