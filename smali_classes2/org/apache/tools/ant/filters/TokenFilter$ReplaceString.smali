.class public Lorg/apache/tools/ant/filters/TokenFilter$ReplaceString;
.super Lorg/apache/tools/ant/filters/TokenFilter$ChainableReaderFilter;
.source "TokenFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/TokenFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReplaceString"
.end annotation


# instance fields
.field private from:Ljava/lang/String;

.field private to:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 341
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/TokenFilter$ChainableReaderFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 370
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceString;->from:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    iget-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceString;->from:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_2

    if-le v1, v2, :cond_0

    .line 379
    invoke-virtual {v0, p1, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 383
    :cond_0
    iget-object v2, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceString;->to:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 384
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_1
    iget-object v2, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceString;->from:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    .line 389
    iget-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceString;->from:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 393
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_3

    .line 394
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p1, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 397
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 371
    :cond_4
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Missing from in stringreplace"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceString;->from:Ljava/lang/String;

    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceString;->to:Ljava/lang/String;

    return-void
.end method
