.class public Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;
.super Ljava/lang/Object;
.source "SQLExec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/SQLExec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Transaction"
.end annotation


# instance fields
.field private tSqlCommand:Ljava/lang/String;

.field private tSrcResource:Lorg/apache/tools/ant/types/Resource;

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/SQLExec;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/SQLExec;)V
    .locals 0

    .line 999
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->this$0:Lorg/apache/tools/ant/taskdefs/SQLExec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1000
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->tSrcResource:Lorg/apache/tools/ant/types/Resource;

    const-string p1, ""

    .line 1001
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->tSqlCommand:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;Ljava/io/PrintStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 999
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->runTransaction(Ljava/io/PrintStream;)V

    return-void
.end method

.method private runTransaction(Ljava/io/PrintStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1052
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->tSqlCommand:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 1053
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->this$0:Lorg/apache/tools/ant/taskdefs/SQLExec;

    const-string v2, "Executing commands"

    invoke-virtual {v0, v2, v1}, Lorg/apache/tools/ant/taskdefs/SQLExec;->log(Ljava/lang/String;I)V

    .line 1054
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->this$0:Lorg/apache/tools/ant/taskdefs/SQLExec;

    new-instance v2, Ljava/io/StringReader;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->tSqlCommand:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, p1}, Lorg/apache/tools/ant/taskdefs/SQLExec;->runStatements(Ljava/io/Reader;Ljava/io/PrintStream;)V

    .line 1057
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->tSrcResource:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_2

    .line 1058
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->this$0:Lorg/apache/tools/ant/taskdefs/SQLExec;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Executing resource: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->tSrcResource:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Resource;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/apache/tools/ant/taskdefs/SQLExec;->log(Ljava/lang/String;I)V

    .line 1060
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->this$0:Lorg/apache/tools/ant/taskdefs/SQLExec;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->access$100(Lorg/apache/tools/ant/taskdefs/SQLExec;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0

    .line 1061
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->this$0:Lorg/apache/tools/ant/taskdefs/SQLExec;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->access$100(Lorg/apache/tools/ant/taskdefs/SQLExec;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 1062
    :goto_0
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->tSrcResource:Lorg/apache/tools/ant/types/Resource;

    .line 1063
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 1064
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->this$0:Lorg/apache/tools/ant/taskdefs/SQLExec;

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/taskdefs/SQLExec;->runStatements(Ljava/io/Reader;Ljava/io/PrintStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 1062
    :try_start_1
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 2

    .line 1043
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1047
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->setSrcResource(Lorg/apache/tools/ant/types/Resource;)V

    return-void

    .line 1044
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "only single argument resource collections are supported."

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addText(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->tSqlCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->tSqlCommand:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1011
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->setSrcResource(Lorg/apache/tools/ant/types/Resource;)V

    :cond_0
    return-void
.end method

.method public setSrcResource(Lorg/apache/tools/ant/types/Resource;)V
    .locals 1

    .line 1021
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->tSrcResource:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_0

    .line 1024
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->tSrcResource:Lorg/apache/tools/ant/types/Resource;

    return-void

    .line 1022
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "only one resource per transaction"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
