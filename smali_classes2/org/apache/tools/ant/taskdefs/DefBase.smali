.class public abstract Lorg/apache/tools/ant/taskdefs/DefBase;
.super Lorg/apache/tools/ant/taskdefs/AntlibDefinition;
.source "DefBase.java"


# instance fields
.field private cpDelegate:Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

.field private createdLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;-><init>()V

    return-void
.end method

.method private getDelegate()Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DefBase;->cpDelegate:Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    if-nez v0, :cond_0

    .line 165
    invoke-static {p0}, Lorg/apache/tools/ant/util/ClasspathUtils;->getDelegate(Lorg/apache/tools/ant/ProjectComponent;)Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/DefBase;->cpDelegate:Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    .line 167
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DefBase;->cpDelegate:Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    return-object v0
.end method


# virtual methods
.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 107
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/DefBase;->getDelegate()Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method protected createLoader()Ljava/lang/ClassLoader;
    .locals 2

    .line 140
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/DefBase;->getAntlibClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DefBase;->cpDelegate:Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/DefBase;->getAntlibClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DefBase;->createdLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_1

    .line 144
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/DefBase;->getDelegate()Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/DefBase;->createdLoader:Ljava/lang/ClassLoader;

    .line 148
    check-cast v0, Lorg/apache/tools/ant/AntClassLoader;

    const-string v1, "org.apache.tools.ant"

    .line 149
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntClassLoader;->addSystemPackageRoot(Ljava/lang/String;)V

    .line 151
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DefBase;->createdLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 66
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/DefBase;->getDelegate()Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public getClasspathId()Ljava/lang/String;
    .locals 1

    .line 89
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/DefBase;->getDelegate()Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->getClassLoadId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoaderId()Ljava/lang/String;
    .locals 1

    .line 81
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/DefBase;->getDelegate()Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->getClassLoadId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hasCpDelegate()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DefBase;->cpDelegate:Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public init()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 160
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;->init()V

    return-void
.end method

.method public isReverseLoader()Z
    .locals 1

    .line 73
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/DefBase;->getDelegate()Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->isReverseLoader()Z

    move-result v0

    return v0
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/DefBase;->getDelegate()Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 116
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/DefBase;->getDelegate()Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->setClasspathref(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setLoaderRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 132
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/DefBase;->getDelegate()Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->setLoaderRef(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setReverseLoader(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/DefBase;->getDelegate()Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ClasspathUtils$Delegate;->setReverseLoader(Z)V

    const-string p1, "The reverseloader attribute is DEPRECATED. It will be removed"

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/DefBase;->log(Ljava/lang/String;I)V

    return-void
.end method
