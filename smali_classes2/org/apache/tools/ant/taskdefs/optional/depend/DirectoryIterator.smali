.class public Lorg/apache/tools/ant/taskdefs/optional/depend/DirectoryIterator;
.super Ljava/lang/Object;
.source "DirectoryIterator.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator;


# instance fields
.field private currentIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private enumStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/util/Iterator<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/DirectoryIterator;->enumStack:Ljava/util/Deque;

    .line 71
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/DirectoryIterator;->getDirectoryEntries(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/DirectoryIterator;->currentIterator:Ljava/util/Iterator;

    return-void
.end method

.method private getDirectoryEntries(Ljava/io/File;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    .line 85
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 87
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getNextClassFile()Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;
    .locals 5

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 110
    :try_start_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/DirectoryIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 111
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/DirectoryIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 113
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/DirectoryIterator;->enumStack:Ljava/util/Deque;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/DirectoryIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v3, v4}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 119
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/DirectoryIterator;->getDirectoryEntries(Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    .line 121
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/DirectoryIterator;->currentIterator:Ljava/util/Iterator;

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, ".class"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;-><init>()V

    .line 132
    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;->read(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-eqz v3, :cond_0

    .line 136
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v3, :cond_3

    .line 124
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1

    .line 139
    :cond_4
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/DirectoryIterator;->enumStack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    .line 142
    :cond_5
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/DirectoryIterator;->enumStack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Iterator;

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/DirectoryIterator;->currentIterator:Ljava/util/Iterator;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :cond_6
    :goto_2
    move-object v0, v1

    :catch_0
    return-object v0
.end method
