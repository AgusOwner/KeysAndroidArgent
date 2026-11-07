.class public Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "Native2Ascii.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii$ExtMapper;
    }
.end annotation


# instance fields
.field private destDir:Ljava/io/File;

.field private encoding:Ljava/lang/String;

.field private extension:Ljava/lang/String;

.field private facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

.field private mapper:Lorg/apache/tools/ant/types/Mapper;

.field private nestedAdapter:Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;

.field private reverse:Z

.field private srcDir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->reverse:Z

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->encoding:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->srcDir:Ljava/io/File;

    .line 47
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->destDir:Ljava/io/File;

    .line 48
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->extension:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    .line 52
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;

    .line 56
    new-instance v0, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapterFactory;->getDefault()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    return-void
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->extension:Ljava/lang/String;

    return-object p0
.end method

.method private convert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 278
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->srcDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 279
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->destDir:Ljava/io/File;

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 288
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 290
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 293
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "cannot create parent directory %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 299
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "converting "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->log(Ljava/lang/String;I)V

    .line 300
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;

    if-eqz p1, :cond_2

    goto :goto_1

    .line 301
    :cond_2
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {p1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getImplementation()Ljava/lang/String;

    move-result-object p1

    .line 302
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->createImplementationClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object p2

    .line 301
    invoke-static {p1, p0, p2}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapterFactory;->getAdapter(Ljava/lang/String;Lorg/apache/tools/ant/ProjectComponent;Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;

    move-result-object p1

    .line 303
    :goto_1
    invoke-interface {p1, p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;->convert(Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 304
    :cond_3
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "conversion failed"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 283
    :cond_4
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "file %s would overwrite itself"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;

    if-nez v0, :cond_0

    .line 204
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->nestedAdapter:Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapter;

    return-void

    .line 201
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Can\'t have more than one native2ascii adapter"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .locals 1

    .line 166
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->createMapper()Lorg/apache/tools/ant/types/Mapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Mapper;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    return-void
.end method

.method public createArg()Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;
    .locals 2

    .line 176
    new-instance v0, Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;-><init>()V

    .line 178
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->addImplementationArgument(Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;)V

    return-object v0
.end method

.method public createImplementationClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 190
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getImplementationClasspath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createMapper()Lorg/apache/tools/ant/types/Mapper;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->mapper:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lorg/apache/tools/ant/types/Mapper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Mapper;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->mapper:Lorg/apache/tools/ant/types/Mapper;

    return-object v0

    .line 152
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot define more than one mapper"

    .line 153
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public execute()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->srcDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->srcDir:Ljava/io/File;

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->destDir:Ljava/io/File;

    if-eqz v0, :cond_9

    .line 231
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->srcDir:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->extension:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->mapper:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 232
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The ext attribute or a mapper must be set if src and dest dirs are the same."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->mapper:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_4

    .line 238
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->extension:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 239
    new-instance v0, Lorg/apache/tools/ant/util/IdentityMapper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/IdentityMapper;-><init>()V

    goto :goto_1

    .line 241
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii$ExtMapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii$ExtMapper;-><init>(Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii$1;)V

    goto :goto_1

    .line 244
    :cond_4
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    .line 247
    :goto_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->srcDir:Ljava/io/File;

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v1

    .line 248
    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v1

    .line 249
    new-instance v2, Lorg/apache/tools/ant/util/SourceFileScanner;

    invoke-direct {v2, p0}, Lorg/apache/tools/ant/util/SourceFileScanner;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 250
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->srcDir:Ljava/io/File;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->destDir:Ljava/io/File;

    invoke-virtual {v2, v1, v3, v4, v0}, Lorg/apache/tools/ant/util/SourceFileScanner;->restrict([Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/util/FileNameMapper;)[Ljava/lang/String;

    move-result-object v1

    .line 251
    array-length v2, v1

    if-nez v2, :cond_5

    return-void

    .line 255
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Converting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    if-eq v2, v4, :cond_6

    const-string v2, "s"

    goto :goto_2

    :cond_6
    const-string v2, ""

    .line 256
    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->srcDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->destDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->log(Ljava/lang/String;)V

    .line 258
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_8

    aget-object v5, v1, v4

    .line 259
    invoke-interface {v0, v5}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 260
    array-length v7, v6

    if-lez v7, :cond_7

    .line 261
    aget-object v6, v6, v3

    invoke-direct {p0, v5, v6}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->convert(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    return-void

    .line 225
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The dest attribute must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrentArgs()[Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getArgs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getReverse()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->reverse:Z

    return v0
.end method

.method public setDest(Ljava/io/File;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->destDir:Ljava/io/File;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->extension:Ljava/lang/String;

    return-void
.end method

.method public setImplementation(Ljava/lang/String;)V
    .locals 1

    const-string v0, "default"

    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/Native2AsciiAdapterFactory;->getDefault()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->setImplementation(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->facade:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->setImplementation(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setReverse(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->reverse:Z

    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->srcDir:Ljava/io/File;

    return-void
.end method
