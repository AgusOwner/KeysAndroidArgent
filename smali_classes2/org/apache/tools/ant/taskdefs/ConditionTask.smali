.class public Lorg/apache/tools/ant/taskdefs/ConditionTask;
.super Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;
.source "ConditionTask.java"


# instance fields
.field private alternative:Ljava/lang/Object;

.field private property:Ljava/lang/String;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "condition"

    .line 50
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/condition/ConditionBase;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->property:Ljava/lang/String;

    const-string v1, "true"

    .line 43
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->value:Ljava/lang/Object;

    .line 44
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->alternative:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ConditionTask;->countConditions()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_4

    .line 114
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ConditionTask;->countConditions()I

    move-result v0

    if-lt v0, v1, :cond_3

    .line 118
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->property:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ConditionTask;->getConditions()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/condition/Condition;

    .line 122
    invoke-interface {v0}, Lorg/apache/tools/ant/taskdefs/condition/Condition;->eval()Z

    move-result v0

    const-string v1, " to "

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Condition true; setting "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->property:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/ConditionTask;->log(Ljava/lang/String;I)V

    .line 124
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ConditionTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->property:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/PropertyHelper;->setNewProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->alternative:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Condition false; setting "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->property:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->alternative:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/ConditionTask;->log(Ljava/lang/String;I)V

    .line 127
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ConditionTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->property:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->alternative:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/PropertyHelper;->setNewProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 129
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Condition false; not setting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->property:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/ConditionTask;->log(Ljava/lang/String;I)V

    :goto_0
    return-void

    .line 119
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The property attribute is required."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 116
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ConditionTask;->getTaskName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "You must nest a condition into <%s>"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 110
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 112
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ConditionTask;->getTaskName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "You must not nest more than one condition into <%s>"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public setElse(Ljava/lang/Object;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->alternative:Ljava/lang/Object;

    return-void
.end method

.method public setElse(Ljava/lang/String;)V
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/ConditionTask;->setElse(Ljava/lang/Object;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->property:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ConditionTask;->value:Ljava/lang/Object;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/ConditionTask;->setValue(Ljava/lang/Object;)V

    return-void
.end method
