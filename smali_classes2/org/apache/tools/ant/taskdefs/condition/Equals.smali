.class public Lorg/apache/tools/ant/taskdefs/condition/Equals;
.super Ljava/lang/Object;
.source "Equals.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# static fields
.field private static final REQUIRED:I = 0x3


# instance fields
.field private arg1:Ljava/lang/Object;

.field private arg2:Ljava/lang/Object;

.field private args:I

.field private caseSensitive:Z

.field private forcestring:Z

.field private trim:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->trim:Z

    const/4 v1, 0x1

    .line 33
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->caseSensitive:Z

    .line 35
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->forcestring:Z

    return-void
.end method

.method private setArg1Internal(Ljava/lang/Object;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->arg1:Ljava/lang/Object;

    .line 61
    iget p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->args:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->args:I

    return-void
.end method

.method private setArg2Internal(Ljava/lang/Object;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->arg2:Ljava/lang/Object;

    .line 88
    iget p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->args:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->args:I

    return-void
.end method


# virtual methods
.method public eval()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 125
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->args:I

    const/4 v1, 0x3

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    .line 128
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->arg1:Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->arg2:Ljava/lang/Object;

    if-eq v0, v1, :cond_a

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 131
    :cond_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->forcestring:Z

    if-eqz v0, :cond_5

    .line 132
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->arg1:Ljava/lang/Object;

    if-eqz v0, :cond_2

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->arg1:Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->arg2:Ljava/lang/Object;

    if-eqz v0, :cond_4

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_1
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->arg2:Ljava/lang/Object;

    .line 135
    :cond_5
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->arg1:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->trim:Z

    if-eqz v1, :cond_6

    .line 136
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->arg1:Ljava/lang/Object;

    .line 138
    :cond_6
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->arg2:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->trim:Z

    if-eqz v1, :cond_7

    .line 139
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->arg2:Ljava/lang/Object;

    .line 141
    :cond_7
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->arg1:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->arg2:Ljava/lang/Object;

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 142
    check-cast v0, Ljava/lang/String;

    .line 143
    check-cast v1, Ljava/lang/String;

    .line 144
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->caseSensitive:Z

    if-eqz v2, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_2
    return v0

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_a
    :goto_3
    const/4 v0, 0x1

    return v0

    .line 126
    :cond_b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "both arg1 and arg2 are required in equals"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setArg1(Ljava/lang/Object;)V
    .locals 1

    .line 43
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 44
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/condition/Equals;->setArg1(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/condition/Equals;->setArg1Internal(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setArg1(Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/condition/Equals;->setArg1Internal(Ljava/lang/Object;)V

    return-void
.end method

.method public setArg2(Ljava/lang/Object;)V
    .locals 1

    .line 70
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 71
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/condition/Equals;->setArg2(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/condition/Equals;->setArg2Internal(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setArg2(Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/condition/Equals;->setArg2Internal(Ljava/lang/Object;)V

    return-void
.end method

.method public setCasesensitive(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->caseSensitive:Z

    return-void
.end method

.method public setForcestring(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->forcestring:Z

    return-void
.end method

.method public setTrim(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Equals;->trim:Z

    return-void
.end method
