.class public Lorg/apache/tools/ant/AntTypeDefinition;
.super Ljava/lang/Object;
.source "AntTypeDefinition.java"


# instance fields
.field private adaptToClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private adapterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private classLoader:Ljava/lang/ClassLoader;

.field private className:Ljava/lang/String;

.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private restrict:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->restrict:Z

    return-void
.end method

.method private createAndSet(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, " as the class "

    const-string v1, " due to "

    const-string v2, "Could not create type "

    .line 264
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->innerCreateAndSet(Ljava/lang/Class;Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 283
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/AntTypeDefinition;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 280
    :catch_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " as the constructor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " is not accessible"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 277
    :catch_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/AntTypeDefinition;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " is abstract"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 274
    :catch_2
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/AntTypeDefinition;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " has no compatible constructor"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3
    move-exception p1

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": A class needed by class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " cannot be found: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 271
    invoke-virtual {p1}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 272
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p1

    .line 266
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    .line 267
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/AntTypeDefinition;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private extractClassname(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "<null>"

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private icreate(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;
    .locals 3

    .line 215
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->getTypeClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 219
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->createAndSet(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adapterClass:Ljava/lang/Class;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adaptToClass:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 221
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 224
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adapterClass:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->createAndSet(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/TypeAdapter;

    .line 226
    invoke-interface {p1, v0}, Lorg/apache/tools/ant/TypeAdapter;->setProxy(Ljava/lang/Object;)V

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public checkClass(Lorg/apache/tools/ant/Project;)V
    .locals 2

    .line 241
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->clazz:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 242
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->getTypeClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->clazz:Ljava/lang/Class;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to create class for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lorg/apache/tools/ant/AntTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 249
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adapterClass:Ljava/lang/Class;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adaptToClass:Ljava/lang/Class;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->clazz:Ljava/lang/Class;

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 251
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adapterClass:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->createAndSet(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/TypeAdapter;

    .line 253
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->clazz:Ljava/lang/Class;

    invoke-interface {p1, v0}, Lorg/apache/tools/ant/TypeAdapter;->checkProxyClass(Ljava/lang/Class;)V

    :cond_3
    return-void
.end method

.method public create(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;
    .locals 0

    .line 206
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->icreate(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adaptToClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->getTypeClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adaptToClass:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-object v0

    .line 158
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adapterClass:Ljava/lang/Class;

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->getTypeClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, ") for type "

    const/4 v1, 0x4

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/AntTypeDefinition;->innerGetTypeClass()Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 174
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not load class ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/AntTypeDefinition;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/tools/ant/AntTypeDefinition;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not load a dependent class ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/tools/ant/AntTypeDefinition;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-virtual {p1, v0, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public innerCreateAndSet(Ljava/lang/Class;Lorg/apache/tools/ant/Project;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/apache/tools/ant/Project;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    .line 310
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 314
    const-class v2, Lorg/apache/tools/ant/Project;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    goto :goto_1

    .line 319
    :cond_0
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v0

    .line 318
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 322
    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/Project;->setProjectReference(Ljava/lang/Object;)V

    return-object p1
.end method

.method public innerGetTypeClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->clazz:Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object v0

    .line 191
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->classLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->className:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->clazz:Ljava/lang/Class;

    goto :goto_0

    .line 194
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->clazz:Ljava/lang/Class;

    .line 196
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public isRestrict()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->restrict:Z

    return v0
.end method

.method public sameDefinition(Lorg/apache/tools/ant/AntTypeDefinition;Lorg/apache/tools/ant/Project;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 334
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 335
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/AntTypeDefinition;->getTypeClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/AntTypeDefinition;->getTypeClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/AntTypeDefinition;->getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/AntTypeDefinition;->getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-boolean p2, p1, Lorg/apache/tools/ant/AntTypeDefinition;->restrict:Z

    iget-boolean v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->restrict:Z

    if-ne p2, v0, :cond_0

    iget-object p2, p1, Lorg/apache/tools/ant/AntTypeDefinition;->adapterClass:Ljava/lang/Class;

    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adapterClass:Ljava/lang/Class;

    if-ne p2, v0, :cond_0

    iget-object p1, p1, Lorg/apache/tools/ant/AntTypeDefinition;->adaptToClass:Ljava/lang/Class;

    iget-object p2, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adaptToClass:Ljava/lang/Class;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setAdaptToClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adaptToClass:Ljava/lang/Class;

    return-void
.end method

.method public setAdapterClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adapterClass:Ljava/lang/Class;

    return-void
.end method

.method public setClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->clazz:Ljava/lang/Class;

    if-nez p1, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->classLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->classLoader:Ljava/lang/ClassLoader;

    .line 87
    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->className:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->className:Ljava/lang/String;

    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->className:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->name:Ljava/lang/String;

    return-void
.end method

.method public setRestrict(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lorg/apache/tools/ant/AntTypeDefinition;->restrict:Z

    return-void
.end method

.method public similarDefinition(Lorg/apache/tools/ant/AntTypeDefinition;Lorg/apache/tools/ant/Project;)Z
    .locals 2

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 355
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 356
    invoke-virtual {p0}, Lorg/apache/tools/ant/AntTypeDefinition;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/AntTypeDefinition;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adapterClass:Ljava/lang/Class;

    .line 357
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->extractClassname(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lorg/apache/tools/ant/AntTypeDefinition;->adapterClass:Ljava/lang/Class;

    .line 358
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->extractClassname(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->adaptToClass:Ljava/lang/Class;

    .line 359
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->extractClassname(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lorg/apache/tools/ant/AntTypeDefinition;->adaptToClass:Ljava/lang/Class;

    .line 360
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->extractClassname(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/tools/ant/AntTypeDefinition;->restrict:Z

    iget-boolean v1, p1, Lorg/apache/tools/ant/AntTypeDefinition;->restrict:Z

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 366
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/AntTypeDefinition;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 367
    invoke-virtual {p0}, Lorg/apache/tools/ant/AntTypeDefinition;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 368
    instance-of v1, p1, Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v1, :cond_2

    check-cast p1, Lorg/apache/tools/ant/AntClassLoader;

    .line 371
    invoke-virtual {p1}, Lorg/apache/tools/ant/AntClassLoader;->getClasspath()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Lorg/apache/tools/ant/AntClassLoader;

    .line 372
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->getClasspath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p2, 0x1

    :cond_2
    :goto_0
    return p2
.end method
