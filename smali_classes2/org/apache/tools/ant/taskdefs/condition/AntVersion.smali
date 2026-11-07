.class public Lorg/apache/tools/ant/taskdefs/condition/AntVersion;
.super Lorg/apache/tools/ant/Task;
.source "AntVersion.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# instance fields
.field private atLeast:Ljava/lang/String;

.field private exactly:Ljava/lang/String;

.field private propertyname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->atLeast:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->exactly:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->propertyname:Ljava/lang/String;

    return-void
.end method

.method private getVersion()Lorg/apache/tools/ant/util/DeweyDecimal;
    .locals 7

    .line 104
    new-instance v0, Lorg/apache/tools/ant/Project;

    invoke-direct {v0}, Lorg/apache/tools/ant/Project;-><init>()V

    .line 105
    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->init()V

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ant.version"

    .line 108
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_3

    aget-char v5, v0, v3

    .line 109
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 110
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    :cond_0
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_1

    if-eqz v4, :cond_1

    .line 114
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    :cond_1
    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    :cond_3
    :goto_1
    new-instance v0, Lorg/apache/tools/ant/util/DeweyDecimal;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->atLeast:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->exactly:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one of atleast or exactly may be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 79
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->exactly:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 80
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "One of atleast or exactly must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 85
    :try_start_0
    new-instance v0, Lorg/apache/tools/ant/util/DeweyDecimal;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->atLeast:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 87
    :catch_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->atLeast:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The \'atleast\' attribute is not a Dewey Decimal eg 1.1.0 : %s"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 94
    :cond_4
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/util/DeweyDecimal;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->exactly:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-void

    .line 96
    :catch_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->exactly:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The \'exactly\' attribute is not a Dewey Decimal eg 1.1.0 : %s"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

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

    .line 63
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->validate()V

    .line 64
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->getVersion()Lorg/apache/tools/ant/util/DeweyDecimal;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->atLeast:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 66
    new-instance v1, Lorg/apache/tools/ant/util/DeweyDecimal;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->atLeast:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/DeweyDecimal;->isGreaterThanOrEqual(Lorg/apache/tools/ant/util/DeweyDecimal;)Z

    move-result v0

    return v0

    .line 68
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->exactly:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 69
    new-instance v1, Lorg/apache/tools/ant/util/DeweyDecimal;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->exactly:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/DeweyDecimal;->isEqual(Lorg/apache/tools/ant/util/DeweyDecimal;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public execute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->propertyname:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 45
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->atLeast:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->exactly:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->propertyname:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->getVersion()Lorg/apache/tools/ant/util/DeweyDecimal;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/util/DeweyDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->eval()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->propertyname:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->getVersion()Lorg/apache/tools/ant/util/DeweyDecimal;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/util/DeweyDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    .line 43
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "\'property\' must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAtLeast()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->atLeast:Ljava/lang/String;

    return-object v0
.end method

.method public getExactly()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->exactly:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->propertyname:Ljava/lang/String;

    return-object v0
.end method

.method public setAtLeast(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->atLeast:Ljava/lang/String;

    return-void
.end method

.method public setExactly(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->exactly:Ljava/lang/String;

    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/AntVersion;->propertyname:Ljava/lang/String;

    return-void
.end method
