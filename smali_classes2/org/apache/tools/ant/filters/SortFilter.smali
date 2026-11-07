.class public final Lorg/apache/tools/ant/filters/SortFilter;
.super Lorg/apache/tools/ant/filters/BaseParamFilterReader;
.source "SortFilter.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# static fields
.field private static final COMPARATOR_KEY:Ljava/lang/String; = "comparator"

.field private static final REVERSE_KEY:Ljava/lang/String; = "reverse"


# instance fields
.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private line:Ljava/lang/String;

.field private lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reverse:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 168
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>()V

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->comparator:Ljava/util/Comparator;

    .line 158
    iput-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->line:Ljava/lang/String;

    .line 160
    iput-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .line 179
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Lorg/apache/tools/ant/filters/SortFilter;->comparator:Ljava/util/Comparator;

    .line 158
    iput-object p1, p0, Lorg/apache/tools/ant/filters/SortFilter;->line:Ljava/lang/String;

    .line 160
    iput-object p1, p0, Lorg/apache/tools/ant/filters/SortFilter;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method private initialize()V
    .locals 7

    .line 315
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/SortFilter;->getParameters()[Lorg/apache/tools/ant/types/Parameter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 317
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 318
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "reverse"

    .line 319
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 320
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/filters/SortFilter;->setReverse(Z)V

    goto :goto_1

    :cond_0
    const-string v6, "comparator"

    .line 321
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 323
    :try_start_0
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 326
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Comparator;

    .line 327
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/filters/SortFilter;->setComparator(Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 337
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 329
    :catch_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Value of comparator attribute should implement java.util.Comparator interface"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private sort()V
    .locals 2

    .line 350
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->comparator:Ljava/util/Comparator;

    if-nez v0, :cond_1

    .line 351
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/SortFilter;->isReverse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->lines:Ljava/util/List;

    invoke-static {}, Ljava/util/Comparator;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    goto :goto_0

    .line 354
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->lines:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0

    .line 357
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/filters/SortFilter;->lines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public add(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "can\'t have more than one comparator"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 307
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/filters/SortFilter;->setComparator(Ljava/util/Comparator;)V

    return-void
.end method

.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 1

    .line 249
    new-instance v0, Lorg/apache/tools/ant/filters/SortFilter;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/SortFilter;-><init>(Ljava/io/Reader;)V

    .line 250
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/SortFilter;->isReverse()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/SortFilter;->setReverse(Z)V

    .line 251
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/SortFilter;->getComparator()Ljava/util/Comparator;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/SortFilter;->setComparator(Ljava/util/Comparator;)V

    const/4 p1, 0x1

    .line 252
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/SortFilter;->setInitialized(Z)V

    return-object v0
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public isReverse()Z
    .locals 1

    .line 264
    iget-boolean v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->reverse:Z

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/SortFilter;->getInitialized()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 197
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/SortFilter;->initialize()V

    .line 198
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/filters/SortFilter;->setInitialized(Z)V

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->line:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    .line 207
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 208
    iget-object v3, p0, Lorg/apache/tools/ant/filters/SortFilter;->line:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 209
    iput-object v2, p0, Lorg/apache/tools/ant/filters/SortFilter;->line:Ljava/lang/String;

    goto :goto_2

    .line 211
    :cond_1
    iget-object v2, p0, Lorg/apache/tools/ant/filters/SortFilter;->line:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/filters/SortFilter;->line:Ljava/lang/String;

    goto :goto_2

    .line 214
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->lines:Ljava/util/List;

    if-nez v0, :cond_4

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->lines:Ljava/util/List;

    .line 217
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/SortFilter;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->line:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->line:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 218
    iget-object v1, p0, Lorg/apache/tools/ant/filters/SortFilter;->lines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    :cond_3
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/SortFilter;->sort()V

    .line 221
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->iterator:Ljava/util/Iterator;

    .line 224
    :cond_4
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 225
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->line:Ljava/lang/String;

    goto :goto_1

    .line 227
    :cond_5
    iput-object v2, p0, Lorg/apache/tools/ant/filters/SortFilter;->line:Ljava/lang/String;

    .line 228
    iput-object v2, p0, Lorg/apache/tools/ant/filters/SortFilter;->lines:Ljava/util/List;

    .line 229
    iput-object v2, p0, Lorg/apache/tools/ant/filters/SortFilter;->iterator:Ljava/util/Iterator;

    .line 231
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->line:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 232
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/SortFilter;->read()I

    move-result v0

    return v0

    :cond_6
    const/4 v0, -0x1

    :goto_2
    return v0
.end method

.method public setComparator(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 294
    iput-object p1, p0, Lorg/apache/tools/ant/filters/SortFilter;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public setReverse(Z)V
    .locals 0

    .line 275
    iput-boolean p1, p0, Lorg/apache/tools/ant/filters/SortFilter;->reverse:Z

    return-void
.end method
