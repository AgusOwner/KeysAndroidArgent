.class public Lorg/apache/tools/ant/taskdefs/condition/IsFalse;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "IsFalse.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# instance fields
.field private value:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsFalse;->value:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public eval()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsFalse;->value:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 49
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Nothing to test for falsehood"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 40
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsFalse;->value:Ljava/lang/Boolean;

    return-void
.end method
