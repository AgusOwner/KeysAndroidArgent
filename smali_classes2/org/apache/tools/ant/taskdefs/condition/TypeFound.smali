.class public Lorg/apache/tools/ant/taskdefs/condition/TypeFound;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "TypeFound.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# instance fields
.field private name:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    return-void
.end method


# virtual methods
.method protected doesTypeExist(Ljava/lang/String;)Z
    .locals 4

    .line 62
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/TypeFound;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/TypeFound;->uri:Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/apache/tools/ant/ProjectHelper;->genComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/ComponentHelper;->getDefinition(Ljava/lang/String;)Lorg/apache/tools/ant/AntTypeDefinition;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 69
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/TypeFound;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/AntTypeDefinition;->getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    const-string v1, "type"

    .line 71
    invoke-virtual {v0, p1, v1}, Lorg/apache/tools/ant/ComponentHelper;->diagnoseCreationFailure(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    .line 72
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/condition/TypeFound;->log(Ljava/lang/String;I)V

    :cond_2
    return v2
.end method

.method public eval()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/TypeFound;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/condition/TypeFound;->doesTypeExist(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 86
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No type specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/TypeFound;->name:Ljava/lang/String;

    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/TypeFound;->uri:Ljava/lang/String;

    return-void
.end method
