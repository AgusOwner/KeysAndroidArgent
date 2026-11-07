.class public final Lorg/apache/tools/ant/types/AntFilterReader;
.super Lorg/apache/tools/ant/types/DataType;
.source "AntFilterReader.java"


# instance fields
.field private className:Ljava/lang/String;

.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/Parameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/AntFilterReader;->parameters:Ljava/util/List;

    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/types/AntFilterReader;
    .locals 1

    .line 178
    const-class v0, Lorg/apache/tools/ant/types/AntFilterReader;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AntFilterReader;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/AntFilterReader;

    return-object v0
.end method


# virtual methods
.method public addParam(Lorg/apache/tools/ant/types/Parameter;)V
    .locals 1

    .line 70
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lorg/apache/tools/ant/types/AntFilterReader;->parameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 97
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lorg/apache/tools/ant/types/AntFilterReader;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/AntFilterReader;->classpath:Lorg/apache/tools/ant/types/Path;

    :cond_0
    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/AntFilterReader;->setChecked(Z)V

    .line 104
    iget-object v0, p0, Lorg/apache/tools/ant/types/AntFilterReader;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0

    .line 98
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method protected declared-synchronized dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 164
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->isChecked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 165
    monitor-exit p0

    return-void

    .line 167
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/AntFilterReader;->classpath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_2

    .line 171
    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/AntFilterReader;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    :cond_2
    const/4 p1, 0x1

    .line 173
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AntFilterReader;->setChecked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->getRef()Lorg/apache/tools/ant/types/AntFilterReader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/AntFilterReader;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->dieOnCircularReference()V

    .line 61
    iget-object v0, p0, Lorg/apache/tools/ant/types/AntFilterReader;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->getRef()Lorg/apache/tools/ant/types/AntFilterReader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/AntFilterReader;->getClasspath()Lorg/apache/tools/ant/types/Path;

    .line 115
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->dieOnCircularReference()V

    .line 116
    iget-object v0, p0, Lorg/apache/tools/ant/types/AntFilterReader;->classpath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public getParams()[Lorg/apache/tools/ant/types/Parameter;
    .locals 2

    .line 137
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->getRef()Lorg/apache/tools/ant/types/AntFilterReader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/AntFilterReader;->getParams()[Lorg/apache/tools/ant/types/Parameter;

    .line 140
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->dieOnCircularReference()V

    .line 141
    iget-object v0, p0, Lorg/apache/tools/ant/types/AntFilterReader;->parameters:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/tools/ant/types/Parameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/types/Parameter;

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iput-object p1, p0, Lorg/apache/tools/ant/types/AntFilterReader;->className:Ljava/lang/String;

    return-void

    .line 46
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 81
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lorg/apache/tools/ant/types/AntFilterReader;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 85
    iput-object p1, p0, Lorg/apache/tools/ant/types/AntFilterReader;->classpath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    const/4 p1, 0x0

    .line 89
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/AntFilterReader;->setChecked(Z)V

    return-void

    .line 82
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 125
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void

    .line 126
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/apache/tools/ant/types/AntFilterReader;->parameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/AntFilterReader;->className:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/AntFilterReader;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 159
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/DataType;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/AntFilterReader;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method
