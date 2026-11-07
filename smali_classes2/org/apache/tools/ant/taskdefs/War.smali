.class public Lorg/apache/tools/ant/taskdefs/War;
.super Lorg/apache/tools/ant/taskdefs/Jar;
.source "War.java"


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final XML_DESCRIPTOR_PATH:Ljava/lang/String; = "WEB-INF/web.xml"


# instance fields
.field private addedWebXmlFile:Ljava/io/File;

.field private deploymentDescriptor:Ljava/io/File;

.field private needxmlfile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/War;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Jar;-><init>()V

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/War;->needxmlfile:Z

    const-string v0, "war"

    .line 69
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/War;->archiveType:Ljava/lang/String;

    const-string v0, "create"

    .line 70
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/War;->emptyBehavior:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addClasses(Lorg/apache/tools/ant/types/ZipFileSet;)V
    .locals 1

    const-string v0, "WEB-INF/classes/"

    .line 129
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/ZipFileSet;->setPrefix(Ljava/lang/String;)V

    .line 130
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->addFileset(Lorg/apache/tools/ant/types/FileSet;)V

    return-void
.end method

.method public addLib(Lorg/apache/tools/ant/types/ZipFileSet;)V
    .locals 1

    const-string v0, "WEB-INF/lib/"

    .line 119
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/ZipFileSet;->setPrefix(Ljava/lang/String;)V

    .line 120
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->addFileset(Lorg/apache/tools/ant/types/FileSet;)V

    return-void
.end method

.method public addWebinf(Lorg/apache/tools/ant/types/ZipFileSet;)V
    .locals 1

    const-string v0, "WEB-INF/"

    .line 139
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/ZipFileSet;->setPrefix(Ljava/lang/String;)V

    .line 140
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->addFileset(Lorg/apache/tools/ant/types/FileSet;)V

    return-void
.end method

.method protected cleanUp()V
    .locals 2

    .line 214
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/War;->addedWebXmlFile:Ljava/io/File;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/War;->deploymentDescriptor:Ljava/io/File;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/War;->needxmlfile:Z

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/War;->isInUpdateMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/War;->hasUpdatedFile()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No WEB-INF/web.xml file was added.\nIf this is your intent, set needxmlfile=\'false\' "

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/War;->addedWebXmlFile:Ljava/io/File;

    .line 223
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/Jar;->cleanUp()V

    return-void
.end method

.method protected initZipOutputStream(Lorg/apache/tools/zip/ZipOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 153
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->initZipOutputStream(Lorg/apache/tools/zip/ZipOutputStream;)V

    return-void
.end method

.method public setNeedxmlfile(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/War;->needxmlfile:Z

    return-void
.end method

.method public setWarfile(Ljava/io/File;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/War;->setDestFile(Ljava/io/File;)V

    return-void
.end method

.method public setWebxml(Ljava/io/File;)V
    .locals 2

    .line 92
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/War;->deploymentDescriptor:Ljava/io/File;

    .line 93
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 99
    new-instance p1, Lorg/apache/tools/ant/types/ZipFileSet;

    invoke-direct {p1}, Lorg/apache/tools/ant/types/ZipFileSet;-><init>()V

    .line 100
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/War;->deploymentDescriptor:Ljava/io/File;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/ZipFileSet;->setFile(Ljava/io/File;)V

    const-string v0, "WEB-INF/web.xml"

    .line 101
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/ZipFileSet;->setFullpath(Ljava/lang/String;)V

    .line 102
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/Jar;->addFileset(Lorg/apache/tools/ant/types/FileSet;)V

    return-void

    .line 94
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/War;->deploymentDescriptor:Ljava/io/File;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Deployment descriptor:  does not exist."

    invoke-direct {p1, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method protected zipFile(Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "WEB-INF/web.xml"

    .line 181
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/War;->addedWebXmlFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 187
    sget-object v2, Lorg/apache/tools/ant/taskdefs/War;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v2, v0, p1}, Lorg/apache/tools/ant/util/FileUtils;->fileNameEquals(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Warning: selected "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/War;->archiveType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " files include a second WEB-INF/web.xml which will be ignored.\nThe duplicate entry is at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\nThe file that will be used is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/War;->addedWebXmlFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/War;->logWhenWriting(Ljava/lang/String;I)V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 196
    :cond_1
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/War;->addedWebXmlFile:Ljava/io/File;

    .line 200
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/War;->deploymentDescriptor:Ljava/io/File;

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/tools/ant/taskdefs/Jar;->zipFile(Ljava/io/File;Lorg/apache/tools/zip/ZipOutputStream;Ljava/lang/String;I)V

    :cond_3
    return-void
.end method
