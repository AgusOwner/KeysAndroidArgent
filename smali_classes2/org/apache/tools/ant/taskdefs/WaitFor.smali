.class public Lorg/apache/tools/ant/taskdefs/WaitFor;
.super Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;
.source "WaitFor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/WaitFor$Unit;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHECK_MILLIS:J = 0x1f4L

.field public static final DEFAULT_MAX_WAIT_MILLIS:J = 0x2bf20L

.field public static final ONE_DAY:J = 0x5265c00L

.field public static final ONE_HOUR:J = 0x36ee80L

.field public static final ONE_MILLISECOND:J = 0x1L

.field public static final ONE_MINUTE:J = 0xea60L

.field public static final ONE_SECOND:J = 0x3e8L

.field public static final ONE_WEEK:J = 0x240c8400L


# instance fields
.field private checkEvery:J

.field private checkEveryMultiplier:J

.field private maxWait:J

.field private maxWaitMultiplier:J

.field private timeoutProperty:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "waitfor"

    .line 89
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;-><init>(Ljava/lang/String;)V

    const-wide/32 v0, 0x2bf20

    .line 76
    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->maxWait:J

    const-wide/16 v0, 0x1

    .line 77
    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->maxWaitMultiplier:J

    const-wide/16 v2, 0x1f4

    .line 81
    iput-wide v2, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->checkEvery:J

    .line 82
    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->checkEveryMultiplier:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 99
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;-><init>(Ljava/lang/String;)V

    const-wide/32 v0, 0x2bf20

    .line 76
    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->maxWait:J

    const-wide/16 v0, 0x1

    .line 77
    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->maxWaitMultiplier:J

    const-wide/16 v2, 0x1f4

    .line 81
    iput-wide v2, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->checkEvery:J

    .line 82
    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->checkEveryMultiplier:J

    return-void
.end method


# virtual methods
.method public calculateCheckEveryMillis()J
    .locals 4

    .line 184
    iget-wide v0, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->checkEvery:J

    iget-wide v2, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->checkEveryMultiplier:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public calculateMaxWaitMillis()J
    .locals 4

    .line 193
    iget-wide v0, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->maxWait:J

    iget-wide v2, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->maxWaitMultiplier:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public execute()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->countConditions()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    .line 153
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->countConditions()I

    move-result v0

    if-lt v0, v1, :cond_2

    .line 157
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->getConditions()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/condition/Condition;

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->calculateMaxWaitMillis()J

    move-result-wide v1

    .line 160
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->calculateCheckEveryMillis()J

    move-result-wide v3

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v1

    .line 164
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-gez v1, :cond_1

    .line 165
    invoke-interface {v0}, Lorg/apache/tools/ant/taskdefs/condition/Condition;->eval()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->processSuccess()V

    return-void

    .line 169
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Task "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " interrupted, treating as timed out."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->log(Ljava/lang/String;)V

    .line 175
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->processTimeout()V

    return-void

    .line 154
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 155
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->getTaskName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "You must nest a condition into %s"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 149
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 151
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->getTaskName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "You must not nest more than one condition into %s"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method protected processSuccess()V
    .locals 2

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": condition was met"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/WaitFor;->log(Ljava/lang/String;I)V

    return-void
.end method

.method protected processTimeout()V
    .locals 3

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": timeout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/WaitFor;->log(Ljava/lang/String;I)V

    .line 214
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->timeoutProperty:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/WaitFor;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->timeoutProperty:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCheckEvery(J)V
    .locals 0

    .line 123
    iput-wide p1, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->checkEvery:J

    return-void
.end method

.method public setCheckEveryUnit(Lorg/apache/tools/ant/taskdefs/WaitFor$Unit;)V
    .locals 2

    .line 131
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/WaitFor$Unit;->getMultiplier()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->checkEveryMultiplier:J

    return-void
.end method

.method public setMaxWait(J)V
    .locals 0

    .line 107
    iput-wide p1, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->maxWait:J

    return-void
.end method

.method public setMaxWaitUnit(Lorg/apache/tools/ant/taskdefs/WaitFor$Unit;)V
    .locals 2

    .line 115
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/WaitFor$Unit;->getMultiplier()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->maxWaitMultiplier:J

    return-void
.end method

.method public setTimeoutProperty(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/WaitFor;->timeoutProperty:Ljava/lang/String;

    return-void
.end method
