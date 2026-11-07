.class public Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;
.super Ljava/lang/Object;
.source "ClasspathUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/util/ClasspathUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Delegate"
.end annotation


# instance fields
.field private className:Ljava/lang/String;

.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private classpathId:Ljava/lang/String;

.field private final component:Lorg/apache/tools/ant/ProjectComponent;

.field private loaderId:Ljava/lang/String;

.field private reverseLoader:Z


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/ProjectComponent;)V
    .locals 1

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 325
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->reverseLoader:Z

    .line 332
    iput-object p1, p0, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->component:Lorg/apache/tools/ant/ProjectComponent;

    return-void
.end method

.method private getContextProject()Lorg/apache/tools/ant/Project;
    .locals 1

    .line 431
    iget-object v0, p0, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->component:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v0}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 359
    iget-object v0, p0, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    iget-object v1, p0, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->component:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v1}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 362
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoadId()Ljava/lang/String;
    .locals 2

    .line 439
    iget-object v0, p0, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->loaderId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->classpathId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ant.loader."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->classpathId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 5

    .line 423
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->getContextProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->getClassLoadId()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->reverseLoader:Z

    iget-object v4, p0, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->loaderId:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 424
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->getContextProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/tools/ant/util/ClasspathUtils;->access$000(Lorg/apache/tools/ant/Project;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 423
    :goto_1
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/tools/ant/util/ClasspathUtils;->getClassLoaderForPath(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Ljava/lang/String;ZZ)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 461
    iget-object v0, p0, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->classpath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public isReverseLoader()Z
    .locals 1

    .line 469
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->reverseLoader:Z

    return v0
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 2

    .line 453
    iget-object v0, p0, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->className:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setClassname(Ljava/lang/String;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->className:Ljava/lang/String;

    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 343
    iget-object v0, p0, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 344
    iput-object p1, p0, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->classpath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setClasspathref(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 386
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Reference;->getRefId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->classpathId:Ljava/lang/String;

    .line 387
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setLoaderRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 0

    .line 414
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Reference;->getRefId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->loaderId:Ljava/lang/String;

    return-void
.end method

.method public setReverseLoader(Z)V
    .locals 0

    .line 406
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->reverseLoader:Z

    return-void
.end method
