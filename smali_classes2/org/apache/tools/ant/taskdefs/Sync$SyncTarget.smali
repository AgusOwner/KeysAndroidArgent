.class public Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;
.super Lorg/apache/tools/ant/types/AbstractFileSet;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncTarget"
.end annotation


# instance fields
.field private preserveEmptyDirs:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 539
    invoke-direct {p0}, Lorg/apache/tools/ant/types/AbstractFileSet;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;Z)Lorg/apache/tools/ant/types/FileSet;
    .locals 0

    .line 528
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->toFileSet(Z)Lorg/apache/tools/ant/types/FileSet;

    move-result-object p0

    return-object p0
.end method

.method private toFileSet(Z)Lorg/apache/tools/ant/types/FileSet;
    .locals 4

    .line 577
    new-instance v0, Lorg/apache/tools/ant/types/FileSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/FileSet;-><init>()V

    .line 578
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->isCaseSensitive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FileSet;->setCaseSensitive(Z)V

    .line 579
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->isFollowSymlinks()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FileSet;->setFollowSymlinks(Z)V

    .line 580
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->getMaxLevelsOfSymlinks()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FileSet;->setMaxLevelsOfSymlinks(I)V

    .line 581
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FileSet;->setProject(Lorg/apache/tools/ant/Project;)V

    if-eqz p1, :cond_1

    .line 584
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->mergePatterns(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/PatternSet;

    move-result-object p1

    .line 585
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/PatternSet;->getIncludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FileSet;->appendIncludes([Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/PatternSet;->getExcludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->appendExcludes([Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->getSelectors(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/types/selectors/FileSelector;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 588
    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/FileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 590
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->getDefaultexcludes()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setDefaultexcludes(Z)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getPreserveEmptyDirs()Ljava/lang/Boolean;
    .locals 1

    .line 573
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->preserveEmptyDirs:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setDir(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 550
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "preserveintarget doesn\'t support the dir attribute"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPreserveEmptyDirs(Z)V
    .locals 0

    .line 562
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Sync$SyncTarget;->preserveEmptyDirs:Ljava/lang/Boolean;

    return-void
.end method
