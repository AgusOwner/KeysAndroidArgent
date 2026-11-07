.class public Lorg/apache/tools/ant/taskdefs/CallTarget;
.super Lorg/apache/tools/ant/Task;
.source "CallTarget.java"


# instance fields
.field private callee:Lorg/apache/tools/ant/taskdefs/Ant;

.field private inheritAll:Z

.field private inheritRefs:Z

.field private targetSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->inheritAll:Z

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->inheritRefs:Z

    .line 60
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->targetSet:Z

    return-void
.end method


# virtual methods
.method public addConfiguredTarget(Lorg/apache/tools/ant/taskdefs/Ant$TargetElement;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/CallTarget;->init()V

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->addConfiguredTarget(Lorg/apache/tools/ant/taskdefs/Ant$TargetElement;)V

    const/4 p1, 0x1

    .line 167
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->targetSet:Z

    return-void
.end method

.method public addPropertyset(Lorg/apache/tools/ant/types/PropertySet;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/CallTarget;->init()V

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->addPropertyset(Lorg/apache/tools/ant/types/PropertySet;)V

    return-void
.end method

.method public addReference(Lorg/apache/tools/ant/taskdefs/Ant$Reference;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/CallTarget;->init()V

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->addReference(Lorg/apache/tools/ant/taskdefs/Ant$Reference;)V

    return-void
.end method

.method public createParam()Lorg/apache/tools/ant/taskdefs/Property;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/CallTarget;->init()V

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Ant;->createProperty()Lorg/apache/tools/ant/taskdefs/Property;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/CallTarget;->init()V

    .line 98
    :cond_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->targetSet:Z

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/CallTarget;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const-string v2, "ant.file"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Ant;->setAntfile(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->inheritAll:Z

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Ant;->setInheritAll(Z)V

    .line 105
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->inheritRefs:Z

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Ant;->setInheritRefs(Z)V

    .line 106
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Ant;->execute()V

    return-void

    .line 99
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Attribute target or at least one nested target is required."

    .line 101
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/CallTarget;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public handleErrorFlush(Ljava/lang/String;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->handleErrorFlush(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleErrorFlush(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleErrorOutput(Ljava/lang/String;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->handleErrorOutput(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleErrorOutput(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleFlush(Ljava/lang/String;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->handleFlush(Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleFlush(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleInput([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/Ant;->handleInput([BII)I

    move-result p1

    return p1

    .line 205
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/tools/ant/Task;->handleInput([BII)I

    move-result p1

    return p1
.end method

.method public handleOutput(Ljava/lang/String;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->handleOutput(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleOutput(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public init()V
    .locals 1

    .line 85
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Ant;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Ant;-><init>(Lorg/apache/tools/ant/Task;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    .line 86
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Ant;->init()V

    return-void
.end method

.method public setInheritAll(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->inheritAll:Z

    return-void
.end method

.method public setInheritRefs(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->inheritRefs:Z

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/CallTarget;->init()V

    .line 153
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->callee:Lorg/apache/tools/ant/taskdefs/Ant;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->setTarget(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 154
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/CallTarget;->targetSet:Z

    return-void
.end method
