.class public final Lorg/apache/tools/ant/filters/FixCrLfFilter;
.super Lorg/apache/tools/ant/filters/BaseParamFilterReader;
.source "FixCrLfFilter.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;,
        Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;,
        Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveEofFilter;,
        Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;,
        Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;,
        Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;,
        Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;,
        Lorg/apache/tools/ant/filters/FixCrLfFilter$AddEofFilter;,
        Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;
    }
.end annotation


# static fields
.field private static final CTRLZ:C = '\u001a'

.field private static final DEFAULT_TAB_LENGTH:I = 0x8

.field private static final MAX_TAB_LENGTH:I = 0x50

.field private static final MIN_TAB_LENGTH:I = 0x2


# instance fields
.field private ctrlz:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

.field private eol:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

.field private fixlast:Z

.field private initialized:Z

.field private javafiles:Z

.field private tabLength:I

.field private tabs:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 98
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>()V

    const/16 v0, 0x8

    .line 78
    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->tabLength:I

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->javafiles:Z

    const/4 v1, 0x1

    .line 88
    iput-boolean v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->fixlast:Z

    .line 90
    iput-boolean v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->initialized:Z

    .line 116
    invoke-static {}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->access$000()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->tabs:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    const-string v0, "mac"

    .line 117
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "unix"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-static {}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->access$100()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->ctrlz:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    .line 119
    invoke-static {}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->access$200()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->setEol(Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;)V

    goto :goto_0

    :cond_0
    const-string v0, "dos"

    .line 120
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-static {}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->access$000()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->ctrlz:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    .line 122
    invoke-static {}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->access$300()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->setEol(Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;)V

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->access$100()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->ctrlz:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    .line 125
    invoke-static {}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->access$400()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->setEol(Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>(Ljava/io/Reader;)V

    const/16 p1, 0x8

    .line 78
    iput p1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->tabLength:I

    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->javafiles:Z

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->fixlast:Z

    .line 90
    iput-boolean p1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->initialized:Z

    .line 116
    invoke-static {}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->access$000()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->tabs:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    const-string p1, "mac"

    .line 117
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "unix"

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 118
    invoke-static {}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->access$100()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->ctrlz:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    .line 119
    invoke-static {}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->access$200()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->setEol(Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;)V

    goto :goto_0

    :cond_0
    const-string p1, "dos"

    .line 120
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 121
    invoke-static {}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->access$000()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->ctrlz:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    .line 122
    invoke-static {}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->access$300()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->setEol(Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;)V

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->access$100()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->ctrlz:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    .line 125
    invoke-static {}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->access$400()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->setEol(Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;)V

    :goto_0
    return-void
.end method

.method private static calculateEolString(Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;)Ljava/lang/String;
    .locals 1

    .line 242
    invoke-static {}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->access$700()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v0

    if-eq p0, v0, :cond_3

    invoke-static {}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->access$200()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v0

    if-ne p0, v0, :cond_0

    goto :goto_1

    .line 245
    :cond_0
    invoke-static {}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->access$800()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v0

    if-eq p0, v0, :cond_2

    invoke-static {}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->access$300()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v0

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "\n"

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "\r\n"

    return-object p0

    :cond_3
    :goto_1
    const-string p0, "\r"

    return-object p0
.end method

.method private initInternalFilters()V
    .locals 4

    .line 260
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->ctrlz:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    invoke-static {}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->access$100()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveEofFilter;

    iget-object v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->in:Ljava/io/Reader;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveEofFilter;-><init>(Ljava/io/Reader;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->in:Ljava/io/Reader;

    :goto_0
    iput-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->in:Ljava/io/Reader;

    .line 265
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->eol:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    invoke-static {}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->access$900()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 266
    new-instance v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;

    iget-object v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->in:Ljava/io/Reader;

    iget-object v2, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->eol:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    invoke-static {v2}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->calculateEolString(Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->getFixlast()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;-><init>(Ljava/io/Reader;Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->in:Ljava/io/Reader;

    .line 269
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->tabs:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    invoke-static {}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->access$000()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object v1

    if-eq v0, v1, :cond_4

    .line 272
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->getJavafiles()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    new-instance v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;

    iget-object v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->in:Ljava/io/Reader;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->in:Ljava/io/Reader;

    .line 276
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->tabs:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    invoke-static {}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->access$1000()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object v1

    if-ne v0, v1, :cond_3

    new-instance v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;

    iget-object v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->in:Ljava/io/Reader;

    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->getTablength()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;-><init>(Ljava/io/Reader;I)V

    goto :goto_1

    .line 277
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;

    iget-object v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->in:Ljava/io/Reader;

    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->getTablength()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;-><init>(Ljava/io/Reader;I)V

    :goto_1
    iput-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->in:Ljava/io/Reader;

    .line 280
    :cond_4
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->ctrlz:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    invoke-static {}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->access$1000()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object v1

    if-ne v0, v1, :cond_5

    new-instance v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddEofFilter;

    iget-object v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->in:Ljava/io/Reader;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddEofFilter;-><init>(Ljava/io/Reader;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->in:Ljava/io/Reader;

    :goto_2
    iput-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->in:Ljava/io/Reader;

    const/4 v0, 0x1

    .line 281
    iput-boolean v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->initialized:Z

    return-void
.end method


# virtual methods
.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 1

    .line 141
    :try_start_0
    new-instance v0, Lorg/apache/tools/ant/filters/FixCrLfFilter;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;-><init>(Ljava/io/Reader;)V

    .line 143
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->getJavafiles()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->setJavafiles(Z)V

    .line 144
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->getEol()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->setEol(Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;)V

    .line 145
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->getTab()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->setTab(Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;)V

    .line 146
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->getTablength()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->setTablength(I)V

    .line 147
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->getEof()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->setEof(Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;)V

    .line 148
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->getFixlast()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->setFixlast(Z)V

    .line 149
    invoke-direct {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->initInternalFilters()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 153
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getEof()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->ctrlz:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    invoke-static {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->access$500(Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;)Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object v0

    return-object v0
.end method

.method public getEol()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->eol:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    invoke-static {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->access$600(Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;)Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v0

    return-object v0
.end method

.method public getFixlast()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->fixlast:Z

    return v0
.end method

.method public getJavafiles()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->javafiles:Z

    return v0
.end method

.method public getTab()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;
    .locals 1

    .line 228
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->tabs:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    invoke-static {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->access$500(Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;)Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object v0

    return-object v0
.end method

.method public getTablength()I
    .locals 1

    .line 237
    iget v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->tabLength:I

    return v0
.end method

.method public declared-synchronized read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 295
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->initialized:Z

    if-nez v0, :cond_0

    .line 296
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->initInternalFilters()V

    .line 298
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEof(Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;)V
    .locals 0

    .line 313
    invoke-virtual {p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->resolve()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->ctrlz:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    return-void
.end method

.method public setEol(Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;)V
    .locals 0

    .line 329
    invoke-virtual {p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->resolve()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->eol:Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    return-void
.end method

.method public setFixlast(Z)V
    .locals 0

    .line 339
    iput-boolean p1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->fixlast:Z

    return-void
.end method

.method public setJavafiles(Z)V
    .locals 0

    .line 353
    iput-boolean p1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->javafiles:Z

    return-void
.end method

.method public setTab(Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;)V
    .locals 0

    .line 369
    invoke-virtual {p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->resolve()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->tabs:Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    return-void
.end method

.method public setTablength(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/16 v0, 0x50

    if-gt p1, v0, :cond_0

    .line 387
    iput p1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter;->tabLength:I

    return-void

    .line 383
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "tablength must be between 2 and 80"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
