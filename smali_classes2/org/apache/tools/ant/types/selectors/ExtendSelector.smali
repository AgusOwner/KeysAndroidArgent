.class public Lorg/apache/tools/ant/types/selectors/ExtendSelector;
.super Lorg/apache/tools/ant/types/selectors/BaseSelector;
.source "ExtendSelector.java"


# instance fields
.field private classname:Ljava/lang/String;

.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private dynselector:Lorg/apache/tools/ant/types/selectors/FileSelector;

.field private parameters:Ljava/util/List;
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
    .locals 2

    .line 39
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelector;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classname:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->dynselector:Lorg/apache/tools/ant/types/selectors/FileSelector;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->parameters:Ljava/util/List;

    .line 45
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classpath:Lorg/apache/tools/ant/types/Path;

    return-void
.end method


# virtual methods
.method public addParam(Lorg/apache/tools/ant/types/Parameter;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->parameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 121
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0

    .line 122
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public final getClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classpath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->validate()V

    .line 188
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->parameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->dynselector:Lorg/apache/tools/ant/types/selectors/FileSelector;

    instance-of v1, v0, Lorg/apache/tools/ant/types/selectors/ExtendFileSelector;

    if-eqz v1, :cond_0

    .line 190
    check-cast v0, Lorg/apache/tools/ant/types/selectors/ExtendFileSelector;

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->parameters:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/tools/ant/types/Parameter;

    .line 191
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/tools/ant/types/Parameter;

    .line 190
    invoke-interface {v0, v1}, Lorg/apache/tools/ant/types/selectors/ExtendFileSelector;->setParameters([Lorg/apache/tools/ant/types/Parameter;)V

    .line 193
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->dynselector:Lorg/apache/tools/ant/types/selectors/FileSelector;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/tools/ant/types/selectors/FileSelector;->isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public selectorCreate()V
    .locals 4

    const-string v0, "Selector "

    .line 60
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classname:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v1, :cond_0

    .line 64
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classname:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v1

    .line 69
    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classname:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 71
    :goto_0
    const-class v2, Lorg/apache/tools/ant/types/selectors/FileSelector;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/selectors/FileSelector;

    iput-object v1, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->dynselector:Lorg/apache/tools/ant/types/selectors/FileSelector;

    .line 72
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 74
    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->dynselector:Lorg/apache/tools/ant/types/selectors/FileSelector;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/Project;->setProjectReference(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 84
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classname:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not initialized, class not accessible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 81
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classname:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not initialized, could not create class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :catch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classname:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not initialized, no such class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->setError(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "There is no classname specified"

    .line 88
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->setError(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setClassname(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classname:Ljava/lang/String;

    return-void
.end method

.method public final setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 106
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 110
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classpath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setClasspathref(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 144
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public verifySettings()V
    .locals 2

    .line 159
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->dynselector:Lorg/apache/tools/ant/types/selectors/FileSelector;

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->selectorCreate()V

    .line 162
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classname:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->dynselector:Lorg/apache/tools/ant/types/selectors/FileSelector;

    if-nez v0, :cond_2

    const-string v0, "Internal Error: The custom selector was not created"

    .line 165
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 166
    :cond_2
    instance-of v0, v0, Lorg/apache/tools/ant/types/selectors/ExtendFileSelector;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->parameters:Ljava/util/List;

    .line 167
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Cannot set parameters on custom selector that does not implement ExtendFileSelector"

    .line 168
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->setError(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "The classname attribute is required"

    .line 163
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->setError(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
