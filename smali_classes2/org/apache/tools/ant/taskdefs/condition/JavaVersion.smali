.class public Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;
.super Ljava/lang/Object;
.source "JavaVersion.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# instance fields
.field private atLeast:Ljava/lang/String;

.field private atMost:Ljava/lang/String;

.field private exactly:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atMost:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atLeast:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->exactly:Ljava/lang/String;

    return-void
.end method

.method private validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atLeast:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->exactly:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atMost:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one of atleast or atmost or exactly may be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 59
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->exactly:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atMost:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 60
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "One of atleast or atmost or exactly must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 65
    :try_start_0
    new-instance v0, Lorg/apache/tools/ant/util/DeweyDecimal;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atLeast:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 67
    :catch_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The \'atleast\' attribute is not a Dewey Decimal eg 1.1.0 : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atLeast:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_4
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atMost:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 73
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/util/DeweyDecimal;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atMost:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 75
    :catch_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The \'atmost\' attribute is not a Dewey Decimal eg 1.1.0 : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atMost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_5
    :try_start_2
    new-instance v0, Lorg/apache/tools/ant/util/DeweyDecimal;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->exactly:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-void

    .line 84
    :catch_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The \'exactly\' attribute is not a Dewey Decimal eg 1.1.0 : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->exactly:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public eval()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->validate()V

    .line 41
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getParsedJavaVersion()Lorg/apache/tools/ant/util/DeweyDecimal;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atLeast:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 43
    new-instance v1, Lorg/apache/tools/ant/util/DeweyDecimal;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atLeast:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/DeweyDecimal;->isGreaterThanOrEqual(Lorg/apache/tools/ant/util/DeweyDecimal;)Z

    move-result v0

    return v0

    .line 45
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->exactly:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 46
    new-instance v1, Lorg/apache/tools/ant/util/DeweyDecimal;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->exactly:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/DeweyDecimal;->isEqual(Lorg/apache/tools/ant/util/DeweyDecimal;)Z

    move-result v0

    return v0

    .line 48
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atMost:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 49
    new-instance v1, Lorg/apache/tools/ant/util/DeweyDecimal;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atMost:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/DeweyDecimal;->isLessThanOrEqual(Lorg/apache/tools/ant/util/DeweyDecimal;)Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getAtLeast()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atLeast:Ljava/lang/String;

    return-object v0
.end method

.method public getAtMost()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atMost:Ljava/lang/String;

    return-object v0
.end method

.method public getExactly()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->exactly:Ljava/lang/String;

    return-object v0
.end method

.method public setAtLeast(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atLeast:Ljava/lang/String;

    return-void
.end method

.method public setAtMost(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->atMost:Ljava/lang/String;

    return-void
.end method

.method public setExactly(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/JavaVersion;->exactly:Ljava/lang/String;

    return-void
.end method
