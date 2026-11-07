.class public Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;
.super Ljava/lang/Object;
.source "AbstractClasspathResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassLoaderWithFlag"
.end annotation


# instance fields
.field private final cleanup:Z

.field private final loader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Z)V
    .locals 0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;->loader:Ljava/lang/ClassLoader;

    if-eqz p2, :cond_0

    .line 266
    instance-of p1, p1, Lorg/apache/tools/ant/AntClassLoader;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;->cleanup:Z

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 278
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;->cleanup:Z

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;->loader:Ljava/lang/ClassLoader;

    check-cast v0, Lorg/apache/tools/ant/AntClassLoader;

    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    :cond_0
    return-void
.end method

.method public getLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;->loader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public needsCleanup()Z
    .locals 1

    .line 274
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;->cleanup:Z

    return v0
.end method
