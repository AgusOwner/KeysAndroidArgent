.class public Lorg/apache/tools/ant/taskdefs/condition/IsFileSelected;
.super Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;
.source "IsFileSelected.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private baseDir:Ljava/io/File;

.field private file:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/condition/IsFileSelected;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public eval()Z
    .locals 4

    .line 68
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsFileSelected;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/IsFileSelected;->validate()V

    .line 72
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsFileSelected;->baseDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/IsFileSelected;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/IsFileSelected;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/condition/IsFileSelected;->getSelectors(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/types/selectors/FileSelector;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 78
    sget-object v2, Lorg/apache/tools/ant/taskdefs/condition/IsFileSelected;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/condition/IsFileSelected;->file:Ljava/io/File;

    .line 79
    invoke-virtual {v2, v0, v3}, Lorg/apache/tools/ant/util/FileUtils;->removeLeadingPath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/condition/IsFileSelected;->file:Ljava/io/File;

    .line 78
    invoke-interface {v1, v0, v2, v3}, Lorg/apache/tools/ant/types/selectors/FileSelector;->isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    return v0

    .line 69
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "file attribute not set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBaseDir(Ljava/io/File;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsFileSelected;->baseDir:Ljava/io/File;

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsFileSelected;->file:Ljava/io/File;

    return-void
.end method

.method public validate()V
    .locals 2

    .line 57
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/IsFileSelected;->selectorCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 60
    invoke-super {p0}, Lorg/apache/tools/ant/types/selectors/AbstractSelectorContainer;->validate()V

    return-void

    .line 58
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one selector allowed"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
