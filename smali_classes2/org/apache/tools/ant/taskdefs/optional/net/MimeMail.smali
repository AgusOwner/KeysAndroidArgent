.class public Lorg/apache/tools/ant/taskdefs/optional/net/MimeMail;
.super Lorg/apache/tools/ant/taskdefs/email/EmailTask;
.source "MimeMail.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DEPRECATED - The "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/net/MimeMail;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " task is deprecated. Use the mail task instead."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/net/MimeMail;->log(Ljava/lang/String;)V

    .line 43
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->execute()V

    return-void
.end method
