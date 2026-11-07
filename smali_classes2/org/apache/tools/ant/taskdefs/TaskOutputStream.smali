.class public Lorg/apache/tools/ant/taskdefs/TaskOutputStream;
.super Ljava/io/OutputStream;
.source "TaskOutputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private line:Ljava/lang/StringBuffer;

.field private msgOutputLevel:I

.field private task:Lorg/apache/tools/ant/Task;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/Task;I)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 54
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "As of Ant 1.2 released in October 2000, the TaskOutputStream class"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "is considered to be dead code by the Ant developers and is unmaintained."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Don\'t use it!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/TaskOutputStream;->task:Lorg/apache/tools/ant/Task;

    .line 61
    iput p2, p0, Lorg/apache/tools/ant/taskdefs/TaskOutputStream;->msgOutputLevel:I

    .line 63
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/TaskOutputStream;->line:Ljava/lang/StringBuffer;

    return-void
.end method

.method private processLine()V
    .locals 3

    .line 91
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/TaskOutputStream;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/TaskOutputStream;->task:Lorg/apache/tools/ant/Task;

    iget v2, p0, Lorg/apache/tools/ant/taskdefs/TaskOutputStream;->msgOutputLevel:I

    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    .line 93
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/TaskOutputStream;->line:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-char p1, p1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/TaskOutputStream;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 78
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/TaskOutputStream;->line:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 79
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/TaskOutputStream;->processLine()V

    :cond_2
    :goto_1
    return-void
.end method
