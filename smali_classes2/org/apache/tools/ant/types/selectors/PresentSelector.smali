.class public Lorg/apache/tools/ant/types/selectors/PresentSelector;
.super Lorg/apache/tools/ant/types/selectors/BaseSelector;
.source "PresentSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/selectors/PresentSelector$FilePresence;
    }
.end annotation


# instance fields
.field private destmustexist:Z

.field private map:Lorg/apache/tools/ant/util/FileNameMapper;

.field private mapperElement:Lorg/apache/tools/ant/types/Mapper;

.field private targetdir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelector;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->targetdir:Ljava/io/File;

    .line 40
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    .line 41
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->destmustexist:Z

    return-void
.end method


# virtual methods
.method public addConfigured(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_0

    .line 103
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    return-void

    .line 101
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Cannot define more than one mapper"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createMapper()Lorg/apache/tools/ant/types/Mapper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lorg/apache/tools/ant/types/Mapper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/PresentSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Mapper;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    return-object v0

    .line 87
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot define more than one mapper"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .locals 2

    .line 158
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/PresentSelector;->validate()V

    .line 161
    iget-object p1, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    invoke-interface {p1, p2}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    .line 168
    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    aget-object p1, p1, p3

    if-eqz p1, :cond_2

    .line 173
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->targetdir:Ljava/io/File;

    invoke-virtual {p2, v0, p1}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    iget-boolean p2, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->destmustexist:Z

    if-ne p1, p2, :cond_1

    move p3, v1

    :cond_1
    return p3

    .line 169
    :cond_2
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid destination file results for "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->targetdir:Ljava/io/File;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " with filename "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPresent(Lorg/apache/tools/ant/types/selectors/PresentSelector$FilePresence;)V
    .locals 0

    .line 119
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/selectors/PresentSelector$FilePresence;->getIndex()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 120
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->destmustexist:Z

    :cond_0
    return-void
.end method

.method public setTargetdir(Ljava/io/File;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->targetdir:Ljava/io/File;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{presentselector targetdir: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->targetdir:Ljava/io/File;

    if-nez v1, :cond_0

    const-string v1, "NOT YET SET"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, " present: "

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-boolean v1, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->destmustexist:Z

    if-eqz v1, :cond_1

    const-string v1, "both"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v1, "srconly"

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :goto_1
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    if-eqz v1, :cond_2

    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 63
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v1, :cond_3

    .line 64
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Mapper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    const-string v1, "}"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifySettings()V
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->targetdir:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, "The targetdir attribute is required."

    .line 131
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/PresentSelector;->setError(Ljava/lang/String;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    if-nez v0, :cond_2

    .line 134
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_1

    .line 135
    new-instance v0, Lorg/apache/tools/ant/util/IdentityMapper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/IdentityMapper;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    if-nez v0, :cond_2

    const-string v0, "Could not set <mapper> element."

    .line 139
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/PresentSelector;->setError(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
