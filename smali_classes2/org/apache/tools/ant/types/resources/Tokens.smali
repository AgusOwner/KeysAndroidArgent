.class public Lorg/apache/tools/ant/types/resources/Tokens;
.super Lorg/apache/tools/ant/types/resources/BaseResourceCollectionWrapper;
.source "Tokens.java"


# instance fields
.field private encoding:Ljava/lang/String;

.field private tokenizer:Lorg/apache/tools/ant/util/Tokenizer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lorg/apache/tools/ant/util/Tokenizer;)V
    .locals 1

    monitor-enter p0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Tokens;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Tokens;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    if-nez v0, :cond_0

    .line 102
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/Tokens;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    const/4 p1, 0x0

    .line 103
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/Tokens;->setChecked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 100
    :cond_0
    :try_start_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Only one nested tokenizer allowed."

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Tokens;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 116
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Tokens;->isChecked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 117
    monitor-exit p0

    return-void

    .line 121
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionWrapper;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 123
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Tokens;->isReference()Z

    move-result v0

    if-nez v0, :cond_2

    .line 124
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Tokens;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    instance-of v1, v0, Lorg/apache/tools/ant/types/DataType;

    if-eqz v1, :cond_1

    .line 125
    check-cast v0, Lorg/apache/tools/ant/types/DataType;

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/Tokens;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    :cond_1
    const/4 p1, 0x1

    .line 128
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/Tokens;->setChecked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized getCollection()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Tokens;->getResourceCollection()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    monitor-exit p0

    return-object v0

    .line 57
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Tokens;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    if-nez v1, :cond_1

    .line 58
    new-instance v1, Lorg/apache/tools/ant/util/LineTokenizer;

    invoke-direct {v1}, Lorg/apache/tools/ant/util/LineTokenizer;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/types/resources/Tokens;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 60
    :cond_1
    :try_start_2
    new-instance v1, Lorg/apache/tools/ant/util/ConcatResourceInputStream;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;-><init>(Lorg/apache/tools/ant/types/ResourceCollection;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 61
    :try_start_3
    new-instance v0, Ljava/io/InputStreamReader;

    .line 62
    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/Tokens;->encoding:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    goto :goto_0

    .line 63
    :cond_2
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    :goto_0
    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 64
    :try_start_4
    invoke-virtual {v1, p0}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->setManagingComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object v3, p0, Lorg/apache/tools/ant/types/resources/Tokens;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    invoke-interface {v3, v0}, Lorg/apache/tools/ant/util/Tokenizer;->getToken(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_3

    .line 72
    new-instance v4, Lorg/apache/tools/ant/types/resources/StringResource;

    invoke-direct {v4, v3}, Lorg/apache/tools/ant/types/resources/StringResource;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Tokens;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/apache/tools/ant/types/resources/StringResource;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 74
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v3, p0, Lorg/apache/tools/ant/types/resources/Tokens;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    .line 67
    invoke-interface {v3, v0}, Lorg/apache/tools/ant/util/Tokenizer;->getToken(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 77
    :cond_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v1}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 76
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v2

    .line 60
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_8
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_9
    invoke-virtual {v1}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v1

    :try_start_a
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catch_0
    move-exception v0

    .line 78
    :try_start_b
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Error reading tokens"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEncoding(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 87
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/Tokens;->encoding:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
