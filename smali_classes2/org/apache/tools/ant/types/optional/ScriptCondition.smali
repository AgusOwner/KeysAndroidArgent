.class public Lorg/apache/tools/ant/types/optional/ScriptCondition;
.super Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;
.source "ScriptCondition.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# instance fields
.field private value:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lorg/apache/tools/ant/types/optional/AbstractScriptComponent;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/optional/ScriptCondition;->value:Z

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

    .line 46
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/optional/ScriptCondition;->initScriptRunner()V

    .line 47
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/optional/ScriptCondition;->getRunner()Lorg/apache/tools/ant/util/ScriptRunnerBase;

    move-result-object v0

    const-string v1, "ant_condition"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->evaluateScript(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/optional/ScriptCondition;->getValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public getValue()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/optional/ScriptCondition;->value:Z

    return v0
.end method

.method public setValue(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/optional/ScriptCondition;->value:Z

    return-void
.end method
