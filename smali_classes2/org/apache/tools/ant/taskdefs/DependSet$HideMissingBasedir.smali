.class final Lorg/apache/tools/ant/taskdefs/DependSet$HideMissingBasedir;
.super Ljava/lang/Object;
.source "DependSet.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceCollection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/DependSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HideMissingBasedir"
.end annotation


# instance fields
.field private fs:Lorg/apache/tools/ant/types/FileSet;


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/DependSet$HideMissingBasedir;->fs:Lorg/apache/tools/ant/types/FileSet;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/types/FileSet;Lorg/apache/tools/ant/taskdefs/DependSet$1;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/DependSet$HideMissingBasedir;-><init>(Lorg/apache/tools/ant/types/FileSet;)V

    return-void
.end method

.method private basedirExists()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DependSet$HideMissingBasedir;->fs:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->getDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public isFilesystemOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/DependSet$HideMissingBasedir;->basedirExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DependSet$HideMissingBasedir;->fs:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/tools/ant/types/resources/Resources;->EMPTY_ITERATOR:Ljava/util/Iterator;

    :goto_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 112
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/DependSet$HideMissingBasedir;->basedirExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/DependSet$HideMissingBasedir;->fs:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
