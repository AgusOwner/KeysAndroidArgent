.class public Lorg/apache/tools/ant/taskdefs/LogOutputStream;
.super Lorg/apache/tools/ant/util/LineOrientedOutputStream;
.source "LogOutputStream.java"


# instance fields
.field private level:I

.field private pc:Lorg/apache/tools/ant/ProjectComponent;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/ProjectComponent;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Lorg/apache/tools/ant/util/LineOrientedOutputStream;-><init>()V

    const/4 v0, 0x2

    .line 38
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->level:I

    .line 47
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->pc:Lorg/apache/tools/ant/ProjectComponent;

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/ProjectComponent;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/ProjectComponent;)V

    .line 69
    iput p2, p0, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->level:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Task;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/ProjectComponent;I)V

    return-void
.end method


# virtual methods
.method public getMessageLevel()I
    .locals 1

    .line 108
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->level:I

    return v0
.end method

.method protected processBuffer()V
    .locals 4

    .line 77
    :try_start_0
    invoke-super {p0}, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->processBuffer()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 80
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Impossible IOException caught: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected processLine(Ljava/lang/String;)V
    .locals 1

    .line 90
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->level:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->processLine(Ljava/lang/String;I)V

    return-void
.end method

.method protected processLine(Ljava/lang/String;I)V
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/LogOutputStream;->pc:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    return-void
.end method
