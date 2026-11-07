.class public Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogWriter;
.super Ljava/lang/Object;
.source "ChangeLogWriter.java"


# static fields
.field private static final DOM_WRITER:Lorg/apache/tools/ant/util/DOMElementWriter;


# instance fields
.field private final outputDate:Ljava/text/SimpleDateFormat;

.field private outputTime:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lorg/apache/tools/ant/util/DOMElementWriter;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/DOMElementWriter;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogWriter;->DOM_WRITER:Lorg/apache/tools/ant/util/DOMElementWriter;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogWriter;->outputDate:Ljava/text/SimpleDateFormat;

    .line 41
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogWriter;->outputTime:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    .line 48
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 50
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogWriter;->outputTime:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method private printEntry(Lorg/w3c/dom/Document;Ljava/io/PrintWriter;Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "entry"

    .line 87
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogWriter;->outputDate:Ljava/text/SimpleDateFormat;

    .line 89
    invoke-virtual {p3}, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "date"

    .line 88
    invoke-static {p1, v1, v0}, Lorg/apache/tools/ant/util/DOMUtils;->appendTextElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogWriter;->outputTime:Ljava/text/SimpleDateFormat;

    .line 91
    invoke-virtual {p3}, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "time"

    .line 90
    invoke-static {p1, v1, v0}, Lorg/apache/tools/ant/util/DOMUtils;->appendTextElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "author"

    .line 92
    invoke-virtual {p3}, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/apache/tools/ant/util/DOMUtils;->appendCDATAElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p3}, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->getFiles()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/taskdefs/cvslib/RCSFile;

    const-string v2, "file"

    .line 95
    invoke-static {p1, v2}, Lorg/apache/tools/ant/util/DOMUtils;->createChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    const-string v3, "name"

    .line 96
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/cvslib/RCSFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/apache/tools/ant/util/DOMUtils;->appendCDATAElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "revision"

    .line 97
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/cvslib/RCSFile;->getRevision()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/apache/tools/ant/util/DOMUtils;->appendTextElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/cvslib/RCSFile;->getPreviousRevision()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "prevrevision"

    .line 101
    invoke-static {v2, v3, v1}, Lorg/apache/tools/ant/util/DOMUtils;->appendTextElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "msg"

    .line 105
    invoke-virtual {p3}, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->getComment()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, v0, p3}, Lorg/apache/tools/ant/util/DOMUtils;->appendCDATAElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object p3, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogWriter;->DOM_WRITER:Lorg/apache/tools/ant/util/DOMElementWriter;

    const/4 v0, 0x1

    const-string v1, "\t"

    invoke-virtual {p3, p1, p2, v0, v1}, Lorg/apache/tools/ant/util/DOMElementWriter;->write(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public printChangeLog(Ljava/io/PrintWriter;[Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;)V
    .locals 8

    :try_start_0
    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    .line 62
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lorg/apache/tools/ant/util/DOMUtils;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "changelog"

    .line 64
    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 65
    sget-object v1, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogWriter;->DOM_WRITER:Lorg/apache/tools/ant/util/DOMElementWriter;

    const-string v2, "\t"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4, v2}, Lorg/apache/tools/ant/util/DOMElementWriter;->openElement(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 67
    array-length v1, p2

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v2, p2, v4

    .line 68
    invoke-direct {p0, v0, p1, v2}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogWriter;->printEntry(Lorg/w3c/dom/Document;Ljava/io/PrintWriter;Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 70
    :cond_0
    sget-object v2, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogWriter;->DOM_WRITER:Lorg/apache/tools/ant/util/DOMElementWriter;

    const/4 v5, 0x0

    const-string v6, "\t"

    const/4 v7, 0x1

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/tools/ant/util/DOMElementWriter;->closeElement(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;Z)V

    .line 71
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 72
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 74
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
