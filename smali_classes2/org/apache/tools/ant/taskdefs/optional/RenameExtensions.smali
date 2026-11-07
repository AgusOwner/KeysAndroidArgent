.class public Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "RenameExtensions.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private fromExtension:Ljava/lang/String;

.field private globType:Lorg/apache/tools/ant/types/Mapper$MapperType;

.field private replace:Z

.field private srcDir:Ljava/io/File;

.field private toExtension:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    const-string v0, ""

    .line 49
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->fromExtension:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->toExtension:Ljava/lang/String;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->replace:Z

    .line 60
    new-instance v0, Lorg/apache/tools/ant/types/Mapper$MapperType;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Mapper$MapperType;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->globType:Lorg/apache/tools/ant/types/Mapper$MapperType;

    const-string v1, "glob"

    .line 61
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Mapper$MapperType;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->fromExtension:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->toExtension:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->srcDir:Ljava/io/File;

    if-eqz v0, :cond_0

    const-string v0, "DEPRECATED - The renameext task is deprecated.  Use move instead."

    const/4 v1, 0x1

    .line 115
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->log(Ljava/lang/String;I)V

    const-string v0, "Replace this with:"

    const/4 v1, 0x2

    .line 117
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->log(Ljava/lang/String;I)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<move todir=\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->srcDir:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" overwrite=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->replace:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->log(Ljava/lang/String;I)V

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  <fileset dir=\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->srcDir:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" />"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->log(Ljava/lang/String;I)V

    const-string v0, "  <mapper type=\"glob\""

    .line 121
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->log(Ljava/lang/String;I)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "          from=\"*"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->fromExtension:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->log(Ljava/lang/String;I)V

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "          to=\"*"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->toExtension:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->log(Ljava/lang/String;I)V

    const-string v0, "</move>"

    .line 124
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->log(Ljava/lang/String;I)V

    const-string v0, "using the same patterns on <fileset> as you\'ve used here"

    .line 125
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->log(Ljava/lang/String;I)V

    .line 128
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Move;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Move;-><init>()V

    .line 129
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/taskdefs/Move;->bindToOwner(Lorg/apache/tools/ant/Task;)V

    .line 130
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Move;->setOwningTarget(Lorg/apache/tools/ant/Target;)V

    .line 131
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Move;->setTaskName(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Move;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 133
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->srcDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Move;->setTodir(Ljava/io/File;)V

    .line 134
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->replace:Z

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Move;->setOverwrite(Z)V

    .line 136
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->fileset:Lorg/apache/tools/ant/types/FileSet;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->srcDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/FileSet;->setDir(Ljava/io/File;)V

    .line 137
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Move;->addFileset(Lorg/apache/tools/ant/types/FileSet;)V

    .line 139
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Move;->createMapper()Lorg/apache/tools/ant/types/Mapper;

    move-result-object v1

    .line 140
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->globType:Lorg/apache/tools/ant/types/Mapper$MapperType;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Mapper;->setType(Lorg/apache/tools/ant/types/Mapper$MapperType;)V

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "*"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->fromExtension:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Mapper;->setFrom(Ljava/lang/String;)V

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->toExtension:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Mapper;->setTo(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Move;->execute()V

    return-void

    .line 111
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "srcDir, fromExtension and toExtension attributes must be set!"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFromExtension(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->fromExtension:Ljava/lang/String;

    return-void
.end method

.method public setReplace(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->replace:Z

    return-void
.end method

.method public setSrcDir(Ljava/io/File;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->srcDir:Ljava/io/File;

    return-void
.end method

.method public setToExtension(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/RenameExtensions;->toExtension:Ljava/lang/String;

    return-void
.end method
