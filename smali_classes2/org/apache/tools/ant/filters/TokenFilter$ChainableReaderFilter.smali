.class public abstract Lorg/apache/tools/ant/filters/TokenFilter$ChainableReaderFilter;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "TokenFilter.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;
.implements Lorg/apache/tools/ant/filters/TokenFilter$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/TokenFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ChainableReaderFilter"
.end annotation


# instance fields
.field private byLine:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 309
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    const/4 v0, 0x1

    .line 311
    iput-boolean v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ChainableReaderFilter;->byLine:Z

    return-void
.end method


# virtual methods
.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 1

    .line 329
    new-instance v0, Lorg/apache/tools/ant/filters/TokenFilter;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/TokenFilter;-><init>(Ljava/io/Reader;)V

    .line 330
    iget-boolean p1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ChainableReaderFilter;->byLine:Z

    if-nez p1, :cond_0

    .line 331
    new-instance p1, Lorg/apache/tools/ant/filters/TokenFilter$FileTokenizer;

    invoke-direct {p1}, Lorg/apache/tools/ant/filters/TokenFilter$FileTokenizer;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/TokenFilter;->add(Lorg/apache/tools/ant/util/Tokenizer;)V

    .line 333
    :cond_0
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/filters/TokenFilter;->add(Lorg/apache/tools/ant/filters/TokenFilter$Filter;)V

    return-object v0
.end method

.method public setByLine(Z)V
    .locals 0

    .line 319
    iput-boolean p1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ChainableReaderFilter;->byLine:Z

    return-void
.end method
