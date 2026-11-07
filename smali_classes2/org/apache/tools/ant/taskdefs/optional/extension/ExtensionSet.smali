.class public Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;
.super Lorg/apache/tools/ant/types/DataType;
.source "ExtensionSet.java"


# instance fields
.field private final extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final extensionsFilesets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->extensions:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->extensionsFilesets:Ljava/util/List;

    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;
    .locals 1

    .line 145
    const-class v0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;

    return-object v0
.end method


# virtual methods
.method public addExtension(Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;)V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->setChecked(Z)V

    .line 59
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->extensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 1

    .line 81
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->setChecked(Z)V

    .line 85
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->extensionsFilesets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addLibfileset(Lorg/apache/tools/ant/taskdefs/optional/extension/LibFileSet;)V
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->setChecked(Z)V

    .line 72
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->extensionsFilesets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method protected declared-synchronized dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .locals 2
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

    .line 128
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->isChecked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 129
    monitor-exit p0

    return-void

    .line 131
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_2

    .line 134
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->extensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;

    .line 135
    invoke-static {v1, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->extensionsFilesets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/FileSet;

    .line 138
    invoke-static {v1, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    .line 140
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->setChecked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->extensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->extensionsFilesets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/DataType;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void

    .line 120
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public toExtensions(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->getRef()Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->toExtensions(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object p1

    return-object p1

    .line 100
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->dieOnCircularReference()V

    .line 101
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->extensions:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionUtil;->toExtensions(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->extensionsFilesets:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionUtil;->extractExtensions(Lorg/apache/tools/ant/Project;Ljava/util/List;Ljava/util/List;)V

    const/4 p1, 0x0

    new-array p1, p1, [Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    .line 103
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExtensionSet"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->toExtensions(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
