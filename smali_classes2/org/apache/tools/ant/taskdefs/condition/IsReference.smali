.class public Lorg/apache/tools/ant/taskdefs/condition/IsReference;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "IsReference.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# instance fields
.field private ref:Lorg/apache/tools/ant/types/Reference;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public eval()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsReference;->ref:Lorg/apache/tools/ant/types/Reference;

    if-eqz v0, :cond_4

    .line 66
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Reference;->getRefId()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/IsReference;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/Project;->hasReference(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 71
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsReference;->type:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v1, :cond_1

    return v3

    .line 74
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/IsReference;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getDataTypeDefinitions()Ljava/util/Hashtable;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/condition/IsReference;->type:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-nez v1, :cond_2

    .line 76
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/IsReference;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getTaskDefinitions()Ljava/util/Hashtable;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/condition/IsReference;->type:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    :cond_2
    if-eqz v1, :cond_3

    .line 81
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/IsReference;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    return v2

    .line 62
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No reference specified for isreference condition"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsReference;->ref:Lorg/apache/tools/ant/types/Reference;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsReference;->type:Ljava/lang/String;

    return-void
.end method
