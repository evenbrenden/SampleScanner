from lib.utils import sample_value_to_db, percent_to_db, dbfs_as_percent


def test_sample_value_to_db():
    assert str(sample_value_to_db(0)) == "-inf"
    assert sample_value_to_db(1) == -186.63859731166835


def test_percent_to_db():
    assert percent_to_db(4.656612873077392e-10) == -186.63859731166835
    assert str(percent_to_db(0)) == "-inf"


def test_dbfs_as_percent():
    minimum_16_bit_dbfs = -186.63859731166835
    assert dbfs_as_percent(minimum_16_bit_dbfs) == 0
    assert dbfs_as_percent(0) == 1
