.class Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;
.super Lorg/apache/tools/ant/types/AbstractFileSet;
.source "MultiRootFileSet.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceCollection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/resources/MultiRootFileSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Worker"
.end annotation


# instance fields
.field private final type:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/types/resources/MultiRootFileSet;Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;Ljava/io/File;)V
    .locals 0

    .line 205
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/AbstractFileSet;-><init>(Lorg/apache/tools/ant/types/AbstractFileSet;)V

    .line 206
    iput-object p2, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;->type:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    .line 207
    invoke-virtual {p0, p3}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;->setDir(Ljava/io/File;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/types/resources/MultiRootFileSet;Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;Ljava/io/File;Lorg/apache/tools/ant/types/resources/MultiRootFileSet$1;)V
    .locals 0

    .line 199
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;-><init>(Lorg/apache/tools/ant/types/resources/MultiRootFileSet;Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public isFilesystemOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 217
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;->getDirectoryScanner()Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;->type:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    sget-object v2, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;->file:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    if-ne v1, v2, :cond_0

    .line 219
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v1

    .line 221
    :goto_0
    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;->type:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    sget-object v3, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;->both:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    if-ne v2, v3, :cond_1

    .line 222
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v0

    .line 223
    array-length v2, v1

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 224
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    array-length v1, v1

    array-length v3, v0

    invoke-static {v0, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v2

    .line 228
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;[Ljava/lang/String;)V

    return-object v0
.end method

.method public size()I
    .locals 4

    .line 234
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;->getDirectoryScanner()Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;->type:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    sget-object v2, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;->file:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    if-ne v1, v2, :cond_0

    .line 236
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFilesCount()I

    move-result v1

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirsCount()I

    move-result v1

    .line 238
    :goto_0
    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$Worker;->type:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    sget-object v3, Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;->both:Lorg/apache/tools/ant/types/resources/MultiRootFileSet$SetType;

    if-ne v2, v3, :cond_1

    .line 239
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFilesCount()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method
