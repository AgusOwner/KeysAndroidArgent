.class public Lorg/apache/tools/ant/taskdefs/Sleep;
.super Lorg/apache/tools/ant/Task;
.source "Sleep.java"


# instance fields
.field private failOnError:Z

.field private hours:I

.field private milliseconds:I

.field private minutes:I

.field private seconds:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Sleep;->failOnError:Z

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Sleep;->seconds:I

    .line 56
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Sleep;->hours:I

    .line 60
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Sleep;->minutes:I

    .line 65
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Sleep;->milliseconds:I

    return-void
.end method

.method private getSleepTime()J
    .locals 6

    .line 139
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Sleep;->hours:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    iget v4, p0, Lorg/apache/tools/ant/taskdefs/Sleep;->minutes:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Sleep;->seconds:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Sleep;->milliseconds:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public doSleep(J)V
    .locals 0

    .line 116
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "sleeping for "

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sleep;->validate()V

    .line 166
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Sleep;->getSleepTime()J

    move-result-wide v1

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " milliseconds"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/Sleep;->log(Ljava/lang/String;I)V

    .line 169
    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Sleep;->doSleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 171
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Sleep;->failOnError:Z

    if-nez v1, :cond_0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Sleep;->log(Ljava/lang/String;I)V

    :goto_0
    return-void

    .line 172
    :cond_0
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setFailOnError(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Sleep;->failOnError:Z

    return-void
.end method

.method public setHours(I)V
    .locals 0

    .line 88
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Sleep;->hours:I

    return-void
.end method

.method public setMilliseconds(I)V
    .locals 0

    .line 106
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Sleep;->milliseconds:I

    return-void
.end method

.method public setMinutes(I)V
    .locals 0

    .line 97
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Sleep;->minutes:I

    return-void
.end method

.method public setSeconds(I)V
    .locals 0

    .line 79
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Sleep;->seconds:I

    return-void
.end method

.method public validate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Sleep;->getSleepTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    return-void

    .line 152
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Negative sleep periods are not supported"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
