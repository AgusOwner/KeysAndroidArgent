.class Lorg/apache/tools/ant/filters/TokenFilter$DeleteCharacters$1;
.super Lorg/apache/tools/ant/filters/BaseFilterReader;
.source "TokenFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tools/ant/filters/TokenFilter$DeleteCharacters;->chain(Ljava/io/Reader;)Ljava/io/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/tools/ant/filters/TokenFilter$DeleteCharacters;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/filters/TokenFilter$DeleteCharacters;Ljava/io/Reader;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lorg/apache/tools/ant/filters/TokenFilter$DeleteCharacters$1;->this$0:Lorg/apache/tools/ant/filters/TokenFilter$DeleteCharacters;

    invoke-direct {p0, p2}, Lorg/apache/tools/ant/filters/BaseFilterReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 648
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$DeleteCharacters$1;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return v0

    .line 652
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter$DeleteCharacters$1;->this$0:Lorg/apache/tools/ant/filters/TokenFilter$DeleteCharacters;

    int-to-char v2, v0

    invoke-static {v1, v2}, Lorg/apache/tools/ant/filters/TokenFilter$DeleteCharacters;->access$000(Lorg/apache/tools/ant/filters/TokenFilter$DeleteCharacters;C)Z

    move-result v1

    if-nez v1, :cond_0

    return v0
.end method
