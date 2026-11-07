.class public Lorg/apache/tools/ant/taskdefs/Ear;
.super Lorg/apache/tools/ant/taskdefs/Jar;
.source "Ear.java"


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final XML_DESCRIPTOR_PATH:Ljava/lang/String; = "META-INF/application.xml"


# instance fields
.field private deploymentDescriptor:Ljava/io/File;

.field private descriptorAdded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Ear;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Jar;-><init>()V

    const-string v0, "ear"

    .line 48
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ear;->archiveType:Ljava/lang/String;

    const-string v0, "create"

    .line 49
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ear;->emptyBehavior:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addArchives(Lorg/apache/tools/ant/types/ZipFileSet;)V
    .locals 1

    const-string v0, "/"

    .line 90
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/ZipFileSet;->setPrefix(Ljava/lang/String;)V

    .line 91
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->addFileset(Lorg/apache/tools/ant/types/FileSet;)V

    return-void
.end method

.method protected cleanUp()V
    .locals 1

    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Ear;->descriptorAdded:Z

    .line 154
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->cleanUp()V

    return-void
.end method

.method protected initZipOutputStream(Lorg/apache/tools/zip/ZipOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ear;->deploymentDescriptor:Ljava/io/File;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ear;->isInUpdateMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "appxml attribute is required"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ear;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1

    .line 108
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->initZipOutputStream(Lorg/apache/tools/zip/ZipOutputStream;)V

    return-void
.end method

.method public setAppxml(Ljava/io/File;)V
    .locals 2

    .line 68
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Ear;->deploymentDescriptor:Ljava/io/File;

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    new-instance p1, Lorg/apache/tools/ant/types/ZipFileSet;

    invoke-direct {p1}, Lorg/apache/tools/ant/types/ZipFileSet;-><init>()V

    .line 77
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ear;->deploymentDescriptor:Ljava/io/File;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/ZipFileSet;->setFile(Ljava/io/File;)V

    const-string v0, "META-INF/application.xml"

    .line 78
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/ZipFileSet;->setFullpath(Ljava/lang/String;)V

    .line 79
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->addFileset(Lorg/apache/tools/ant/types/FileSet;)V

    return-void

    .line 70
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ear;->deploymentDescriptor:Ljava/io/File;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Deployment descriptor: %s does not exist."

    invoke-direct {p1, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public setEarfile(Ljava/io/File;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Ear;->setDestFile(Ljava/io/File;)V

    return-void
.end method

.method protected zipFile(Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "META-INF/application.xml"

    .line 128
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ear;->deploymentDescriptor:Ljava/io/File;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v2, Lorg/apache/tools/ant/taskdefs/Ear;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 130
    invoke-virtual {v2, v0, p1}, Lorg/apache/tools/ant/util/FileUtils;->fileNameEquals(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Ear;->descriptorAdded:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/tools/ant/taskdefs/Jar;->zipFile(Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V

    .line 140
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Ear;->descriptorAdded:Z

    goto :goto_1

    .line 132
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Warning: selected "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/Ear;->archiveType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " files include a META-INF/application.xml which will be ignored (please use appxml attribute to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/Ear;->archiveType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " task)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lorg/apache/tools/ant/taskdefs/Ear;->logWhenWriting(Ljava/lang/String;I)V

    goto :goto_1

    .line 143
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/tools/ant/taskdefs/Jar;->zipFile(Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V

    :goto_1
    return-void
.end method
