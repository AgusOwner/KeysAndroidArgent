.class public Lorg/apache/tools/ant/types/resources/FileResourceIterator;
.super Ljava/lang/Object;
.source "FileResourceIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/tools/ant/types/Resource;",
        ">;"
    }
.end annotation


# instance fields
.field private basedir:Ljava/io/File;

.field private files:[Ljava/lang/String;

.field private pos:I

.field private project:Lorg/apache/tools/ant/Project;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->pos:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;[Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->pos:I

    .line 51
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->project:Lorg/apache/tools/ant/Project;

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;Ljava/io/File;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 74
    iput-object p2, p0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->basedir:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;Ljava/io/File;[Ljava/lang/String;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;)V

    .line 99
    invoke-virtual {p0, p3}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->addFiles([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addFiles([Ljava/lang/String;)V
    .locals 4

    .line 107
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->files:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, v0

    .line 108
    :goto_0
    array-length v3, p1

    add-int/2addr v3, v2

    new-array v3, v3, [Ljava/lang/String;

    if-lez v2, :cond_1

    .line 110
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    :cond_1
    iput-object v3, p0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->files:[Ljava/lang/String;

    .line 113
    array-length v0, p1

    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 122
    iget v0, p0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->pos:I

    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->files:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->next()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/tools/ant/types/Resource;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->nextResource()Lorg/apache/tools/ant/types/resources/FileResource;

    move-result-object v0

    return-object v0
.end method

.method public nextResource()Lorg/apache/tools/ant/types/resources/FileResource;
    .locals 5

    .line 147
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->basedir:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->files:[Ljava/lang/String;

    iget v3, p0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->pos:I

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/FileResourceIterator;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/FileResource;->setProject(Lorg/apache/tools/ant/Project;)V

    return-object v0

    .line 148
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
