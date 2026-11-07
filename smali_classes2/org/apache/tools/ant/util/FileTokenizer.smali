.class public Lorg/apache/tools/ant/util/FileTokenizer;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "FileTokenizer.java"

# interfaces
.implements Lorg/apache/tools/ant/util/Tokenizer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public getPostToken()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getToken(Ljava/io/Reader;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-static {p1}, Lorg/apache/tools/ant/util/FileUtils;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
