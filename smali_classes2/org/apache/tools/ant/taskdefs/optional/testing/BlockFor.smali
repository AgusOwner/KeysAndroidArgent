.class public Lorg/apache/tools/ant/taskdefs/optional/testing/BlockFor;
.super Lorg/apache/tools/ant/taskdefs/WaitFor;
.source "BlockFor.java"


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "blockfor"

    .line 39
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/WaitFor;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/testing/BlockFor;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timed out"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/BlockFor;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/WaitFor;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .locals 1

    .line 69
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/testing/BlockFor;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/BlockFor;->text:Ljava/lang/String;

    return-void
.end method

.method protected processTimeout()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/taskdefs/optional/testing/BuildTimeoutException;
        }
    .end annotation

    .line 59
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->processTimeout()V

    .line 60
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/testing/BuildTimeoutException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/testing/BlockFor;->text:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/testing/BlockFor;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/testing/BuildTimeoutException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method
