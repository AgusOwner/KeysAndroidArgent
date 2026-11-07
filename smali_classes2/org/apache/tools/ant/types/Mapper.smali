.class public Lorg/apache/tools/ant/types/Mapper;
.super Lorg/apache/tools/ant/types/DataType;
.source "Mapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/Mapper$MapperType;
    }
.end annotation


# instance fields
.field protected classname:Ljava/lang/String;

.field protected classpath:Lorg/apache/tools/ant/types/Path;

.field private container:Lorg/apache/tools/ant/util/ContainerMapper;

.field protected from:Ljava/lang/String;

.field protected to:Ljava/lang/String;

.field protected type:Lorg/apache/tools/ant/types/Mapper$MapperType;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/Project;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lorg/apache/tools/ant/types/Mapper;->type:Lorg/apache/tools/ant/types/Mapper$MapperType;

    .line 37
    iput-object v0, p0, Lorg/apache/tools/ant/types/Mapper;->classname:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lorg/apache/tools/ant/types/Mapper;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 39
    iput-object v0, p0, Lorg/apache/tools/ant/types/Mapper;->from:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lorg/apache/tools/ant/types/Mapper;->to:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lorg/apache/tools/ant/types/Mapper;->container:Lorg/apache/tools/ant/util/ContainerMapper;

    .line 51
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Mapper;->setProject(Lorg/apache/tools/ant/Project;)V

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .locals 2

    .line 79
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper;->isReference()Z

    move-result v0

    if-nez v0, :cond_3

    .line 82
    iget-object v0, p0, Lorg/apache/tools/ant/types/Mapper;->container:Lorg/apache/tools/ant/util/ContainerMapper;

    if-nez v0, :cond_2

    .line 83
    iget-object v0, p0, Lorg/apache/tools/ant/types/Mapper;->type:Lorg/apache/tools/ant/types/Mapper$MapperType;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/Mapper;->classname:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lorg/apache/tools/ant/util/CompositeMapper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/CompositeMapper;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/Mapper;->container:Lorg/apache/tools/ant/util/ContainerMapper;

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    .line 87
    instance-of v1, v0, Lorg/apache/tools/ant/util/ContainerMapper;

    if-eqz v1, :cond_1

    .line 88
    check-cast v0, Lorg/apache/tools/ant/util/ContainerMapper;

    iput-object v0, p0, Lorg/apache/tools/ant/types/Mapper;->container:Lorg/apache/tools/ant/util/ContainerMapper;

    goto :goto_0

    .line 90
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mapper implementation does not support nested mappers!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/Mapper;->container:Lorg/apache/tools/ant/util/ContainerMapper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ContainerMapper;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    const/4 p1, 0x0

    .line 96
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Mapper;->setChecked(Z)V

    return-void

    .line 80
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addConfigured(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Mapper;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    return-void
.end method

.method public addConfiguredMapper(Lorg/apache/tools/ant/types/Mapper;)V
    .locals 0

    .line 104
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Mapper;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    return-void
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 138
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lorg/apache/tools/ant/types/Mapper;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/Mapper;->classpath:Lorg/apache/tools/ant/types/Path;

    :cond_0
    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Mapper;->setChecked(Z)V

    .line 145
    iget-object v0, p0, Lorg/apache/tools/ant/types/Mapper;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0

    .line 139
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper;->isReference()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper;->dieOnCircularReference()V

    .line 206
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper;->getRefid()Lorg/apache/tools/ant/types/Reference;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Reference;->getReferencedObject(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v1

    .line 208
    instance-of v2, v1, Lorg/apache/tools/ant/util/FileNameMapper;

    if-eqz v2, :cond_0

    .line 209
    check-cast v1, Lorg/apache/tools/ant/util/FileNameMapper;

    return-object v1

    .line 211
    :cond_0
    instance-of v2, v1, Lorg/apache/tools/ant/types/Mapper;

    if-eqz v2, :cond_1

    .line 212
    check-cast v1, Lorg/apache/tools/ant/types/Mapper;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    return-object v0

    :cond_1
    if-nez v1, :cond_2

    const-string v1, "null"

    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 215
    :goto_0
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " at reference \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 216
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Reference;->getRefId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' is not a valid mapper reference."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 219
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/types/Mapper;->type:Lorg/apache/tools/ant/types/Mapper$MapperType;

    if-nez v0, :cond_5

    iget-object v1, p0, Lorg/apache/tools/ant/types/Mapper;->classname:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/apache/tools/ant/types/Mapper;->container:Lorg/apache/tools/ant/util/ContainerMapper;

    if-eqz v1, :cond_4

    goto :goto_1

    .line 220
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "nested mapper or one of the attributes type or classname is required"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_5
    :goto_1
    iget-object v1, p0, Lorg/apache/tools/ant/types/Mapper;->container:Lorg/apache/tools/ant/util/ContainerMapper;

    if-eqz v1, :cond_6

    return-object v1

    :cond_6
    if-eqz v0, :cond_8

    .line 228
    iget-object v0, p0, Lorg/apache/tools/ant/types/Mapper;->classname:Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_2

    .line 229
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "must not specify both type and classname attribute"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_8
    :goto_2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper;->getImplementationClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/util/FileNameMapper;

    .line 235
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 237
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/Project;->setProjectReference(Ljava/lang/Object;)V

    .line 239
    :cond_9
    iget-object v1, p0, Lorg/apache/tools/ant/types/Mapper;->from:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/tools/ant/util/FileNameMapper;->setFrom(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lorg/apache/tools/ant/types/Mapper;->to:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/tools/ant/util/FileNameMapper;->setTo(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 246
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_0
    move-exception v0

    .line 244
    throw v0
.end method

.method protected getImplementationClass()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/tools/ant/util/FileNameMapper;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lorg/apache/tools/ant/types/Mapper;->classname:Ljava/lang/String;

    .line 258
    iget-object v1, p0, Lorg/apache/tools/ant/types/Mapper;->type:Lorg/apache/tools/ant/types/Mapper$MapperType;

    if-eqz v1, :cond_0

    .line 259
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Mapper$MapperType;->getImplementation()Ljava/lang/String;

    move-result-object v0

    .line 262
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/types/Mapper;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v1, :cond_1

    .line 263
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/types/Mapper;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    .line 267
    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/util/FileNameMapper;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected getRef()Lorg/apache/tools/ant/types/Mapper;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 279
    const-class v0, Lorg/apache/tools/ant/types/Mapper;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Mapper;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Mapper;

    return-object v0
.end method

.method public setClassname(Ljava/lang/String;)V
    .locals 1

    .line 112
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iput-object p1, p0, Lorg/apache/tools/ant/types/Mapper;->classname:Ljava/lang/String;

    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 123
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lorg/apache/tools/ant/types/Mapper;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 127
    iput-object p1, p0, Lorg/apache/tools/ant/types/Mapper;->classpath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 154
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 1

    .line 165
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iput-object p1, p0, Lorg/apache/tools/ant/types/Mapper;->from:Ljava/lang/String;

    return-void

    .line 166
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

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

    .line 192
    iget-object v0, p0, Lorg/apache/tools/ant/types/Mapper;->type:Lorg/apache/tools/ant/types/Mapper$MapperType;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/Mapper;->from:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/Mapper;->to:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 195
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/DataType;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void

    .line 193
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 1

    .line 176
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iput-object p1, p0, Lorg/apache/tools/ant/types/Mapper;->to:Ljava/lang/String;

    return-void

    .line 177
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setType(Lorg/apache/tools/ant/types/Mapper$MapperType;)V
    .locals 1

    .line 59
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iput-object p1, p0, Lorg/apache/tools/ant/types/Mapper;->type:Lorg/apache/tools/ant/types/Mapper$MapperType;

    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method
