.class public Lorg/apache/tools/ant/filters/Native2AsciiFilter;
.super Lorg/apache/tools/ant/filters/TokenFilter$ChainableReaderFilter;
.source "Native2AsciiFilter.java"


# instance fields
.field private reverse:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/TokenFilter$ChainableReaderFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 44
    iget-boolean v0, p0, Lorg/apache/tools/ant/filters/Native2AsciiFilter;->reverse:Z

    if-eqz v0, :cond_0

    .line 45
    invoke-static {p1}, Lorg/apache/tools/ant/util/Native2AsciiUtils;->ascii2native(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {p1}, Lorg/apache/tools/ant/util/Native2AsciiUtils;->native2ascii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public setReverse(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lorg/apache/tools/ant/filters/Native2AsciiFilter;->reverse:Z

    return-void
.end method
