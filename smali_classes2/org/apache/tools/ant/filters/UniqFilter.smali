.class public Lorg/apache/tools/ant/filters/UniqFilter;
.super Lorg/apache/tools/ant/filters/TokenFilter$ChainableReaderFilter;
.source "UniqFilter.java"


# instance fields
.field private lastLine:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/TokenFilter$ChainableReaderFilter;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lorg/apache/tools/ant/filters/UniqFilter;->lastLine:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/apache/tools/ant/filters/UniqFilter;->lastLine:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 35
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/filters/UniqFilter;->lastLine:Ljava/lang/String;

    return-object p1
.end method
