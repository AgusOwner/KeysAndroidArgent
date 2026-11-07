.class Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;
.super Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;
.source "LayoutPreservingProperties.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/util/LayoutPreservingProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Pair"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private added:Z

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 677
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;-><init>(Ljava/lang/String;)V

    .line 678
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->parsePair(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private findFirstSeparator(Ljava/lang/String;)I
    .locals 2

    const-string v0, "\\\\\\\\"

    const-string v1, "__"

    .line 755
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\\\="

    .line 759
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\\\:"

    .line 760
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\\\ "

    .line 761
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\\\t"

    .line 762
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " :=\t"

    .line 765
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 773
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    .line 774
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 775
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v0, :cond_1

    if-ge v3, v1, :cond_1

    move v1, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 780
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    if-ne v1, p1, :cond_3

    return v0

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method private parsePair(Ljava/lang/String;)V
    .locals 2

    .line 721
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->findFirstSeparator(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 724
    iput-object p1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->name:Ljava/lang/String;

    const/4 p1, 0x0

    .line 725
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 727
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->name:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    .line 728
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->setValue(Ljava/lang/String;)V

    .line 731
    :goto_0
    iget-object p1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->name:Ljava/lang/String;

    const-string v0, " \t\u000c"

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->name:Ljava/lang/String;

    return-void
.end method

.method private stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 740
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 741
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 745
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ne v0, p2, :cond_3

    const-string p1, ""

    return-object p1

    .line 748
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 711
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 714
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 686
    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 691
    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isNew()Z
    .locals 1

    .line 700
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->added:Z

    return v0
.end method

.method public setNew(Z)V
    .locals 0

    .line 704
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->added:Z

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2

    .line 695
    iput-object p1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->value:Ljava/lang/String;

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->setText(Ljava/lang/String;)V

    return-void
.end method
