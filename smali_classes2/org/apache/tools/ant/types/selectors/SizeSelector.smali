.class public Lorg/apache/tools/ant/types/selectors/SizeSelector;
.super Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;
.source "SizeSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/selectors/SizeSelector$ByteUnits;,
        Lorg/apache/tools/ant/types/selectors/SizeSelector$SizeComparisons;
    }
.end annotation


# static fields
.field private static final END_POS:I = 0x24

.field private static final GIBI:J = 0x40000000L

.field private static final GIBI_POS:I = 0x16

.field private static final GIGA:J = 0x3b9aca00L

.field private static final GIGA_POS:I = 0x12

.field private static final KIBI:I = 0x400

.field private static final KIBI_POS:I = 0x4

.field private static final KILO:I = 0x3e8

.field private static final MEBI:I = 0x100000

.field private static final MEBI_POS:I = 0xd

.field private static final MEGA:I = 0xf4240

.field private static final MEGA_POS:I = 0x9

.field public static final SIZE_KEY:Ljava/lang/String; = "value"

.field private static final TEBI:J = 0x10000000000L

.field private static final TEBI_POS:I = 0x1f

.field private static final TERA:J = 0xe8d4a51000L

.field private static final TERA_POS:I = 0x1b

.field public static final UNITS_KEY:Ljava/lang/String; = "units"

.field public static final WHEN_KEY:Ljava/lang/String; = "when"


# instance fields
.field private multiplier:J

.field private size:J

.field private sizelimit:J

.field private when:Lorg/apache/tools/ant/types/Comparison;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 32
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;-><init>()V

    const-wide/16 v0, -0x1

    .line 59
    iput-wide v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->size:J

    const-wide/16 v2, 0x1

    .line 60
    iput-wide v2, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->multiplier:J

    .line 61
    iput-wide v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->sizelimit:J

    .line 62
    sget-object v0, Lorg/apache/tools/ant/types/Comparison;->EQUAL:Lorg/apache/tools/ant/types/Comparison;

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->when:Lorg/apache/tools/ant/types/Comparison;

    return-void
.end method


# virtual methods
.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .locals 2

    .line 218
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/SizeSelector;->validate()V

    .line 221
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 224
    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide p1

    iget-wide v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->sizelimit:J

    sub-long/2addr p1, v0

    .line 225
    iget-object p3, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->when:Lorg/apache/tools/ant/types/Comparison;

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    div-long/2addr p1, v0

    long-to-int p1, p1

    :goto_0
    invoke-virtual {p3, p1}, Lorg/apache/tools/ant/types/Comparison;->evaluate(I)Z

    move-result p1

    return p1
.end method

.method public varargs setParameters([Lorg/apache/tools/ant/types/Parameter;)V
    .locals 5

    .line 159
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;->setParameters([Lorg/apache/tools/ant/types/Parameter;)V

    if-eqz p1, :cond_3

    .line 161
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 162
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "value"

    .line 163
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/types/selectors/SizeSelector;->setValue(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 167
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid size setting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/SizeSelector;->setError(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v4, "units"

    .line 170
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 171
    new-instance v3, Lorg/apache/tools/ant/types/selectors/SizeSelector$ByteUnits;

    invoke-direct {v3}, Lorg/apache/tools/ant/types/selectors/SizeSelector$ByteUnits;-><init>()V

    .line 172
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/types/selectors/SizeSelector$ByteUnits;->setValue(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/types/selectors/SizeSelector;->setUnits(Lorg/apache/tools/ant/types/selectors/SizeSelector$ByteUnits;)V

    goto :goto_1

    :cond_1
    const-string v4, "when"

    .line 174
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 175
    new-instance v3, Lorg/apache/tools/ant/types/selectors/SizeSelector$SizeComparisons;

    invoke-direct {v3}, Lorg/apache/tools/ant/types/selectors/SizeSelector$SizeComparisons;-><init>()V

    .line 176
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/types/selectors/SizeSelector$SizeComparisons;->setValue(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/types/selectors/SizeSelector;->setWhen(Lorg/apache/tools/ant/types/selectors/SizeSelector$SizeComparisons;)V

    goto :goto_1

    .line 179
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid parameter "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/SizeSelector;->setError(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setUnits(Lorg/apache/tools/ant/types/selectors/SizeSelector$ByteUnits;)V
    .locals 6

    .line 116
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/selectors/SizeSelector$ByteUnits;->getIndex()I

    move-result p1

    const-wide/16 v0, 0x0

    .line 117
    iput-wide v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->multiplier:J

    const/4 v2, -0x1

    if-le p1, v2, :cond_0

    const/4 v2, 0x4

    if-ge p1, v2, :cond_0

    const-wide/16 v2, 0x3e8

    .line 119
    iput-wide v2, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->multiplier:J

    goto :goto_0

    :cond_0
    const/16 v2, 0x9

    if-ge p1, v2, :cond_1

    const-wide/16 v2, 0x400

    .line 121
    iput-wide v2, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->multiplier:J

    goto :goto_0

    :cond_1
    const/16 v2, 0xd

    if-ge p1, v2, :cond_2

    const-wide/32 v2, 0xf4240

    .line 123
    iput-wide v2, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->multiplier:J

    goto :goto_0

    :cond_2
    const/16 v2, 0x12

    if-ge p1, v2, :cond_3

    const-wide/32 v2, 0x100000

    .line 125
    iput-wide v2, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->multiplier:J

    goto :goto_0

    :cond_3
    const/16 v2, 0x16

    if-ge p1, v2, :cond_4

    const-wide/32 v2, 0x3b9aca00

    .line 127
    iput-wide v2, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->multiplier:J

    goto :goto_0

    :cond_4
    const/16 v2, 0x1b

    if-ge p1, v2, :cond_5

    const-wide/32 v2, 0x40000000

    .line 129
    iput-wide v2, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->multiplier:J

    goto :goto_0

    :cond_5
    const/16 v2, 0x1f

    if-ge p1, v2, :cond_6

    const-wide v2, 0xe8d4a51000L

    .line 131
    iput-wide v2, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->multiplier:J

    goto :goto_0

    :cond_6
    const/16 v2, 0x24

    if-ge p1, v2, :cond_7

    const-wide v2, 0x10000000000L

    .line 133
    iput-wide v2, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->multiplier:J

    .line 135
    :cond_7
    :goto_0
    iget-wide v2, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->multiplier:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_8

    iget-wide v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->size:J

    const-wide/16 v4, -0x1

    cmp-long p1, v0, v4

    if-lez p1, :cond_8

    mul-long/2addr v0, v2

    .line 136
    iput-wide v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->sizelimit:J

    :cond_8
    return-void
.end method

.method public setValue(J)V
    .locals 4

    .line 83
    iput-wide p1, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->size:J

    .line 84
    iget-wide v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->multiplier:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    mul-long/2addr p1, v0

    .line 85
    iput-wide p1, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->sizelimit:J

    :cond_0
    return-void
.end method

.method public setWhen(Lorg/apache/tools/ant/types/selectors/SizeSelector$SizeComparisons;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->when:Lorg/apache/tools/ant/types/Comparison;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 71
    iget-wide v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->sizelimit:J

    .line 72
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->when:Lorg/apache/tools/ant/types/Comparison;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Comparison;->getValue()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "{sizeselector value: %d compare: %s}"

    .line 71
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifySettings()V
    .locals 6

    .line 196
    iget-wide v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string v0, "The value attribute is required, and must be positive"

    .line 197
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/SizeSelector;->setError(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_0
    iget-wide v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->multiplier:J

    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    const-string v0, "Invalid Units supplied, must be K,Ki,M,Mi,G,Gi,T,or Ti"

    .line 199
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/SizeSelector;->setError(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_1
    iget-wide v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->sizelimit:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    const-string v0, "Internal error: Code is not setting sizelimit correctly"

    .line 201
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/SizeSelector;->setError(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
