//
//  VBidPriceCell.m
//  HBStockView
//
//  Created by Vols on 2017/2/28.
//  Copyright © 2017年 vols. All rights reserved.
//

#import "VVWuDangCell.h"
#import "Masonry.h"

@interface VVWuDangCell ()


@end


@implementation VVWuDangCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
//        self.contentView.backgroundColor = kRGB(250, 251, 252);
        [self.contentView addSubview:self.noteLabel];
        [self.contentView addSubview:self.priceLabel];
        [self.contentView addSubview:self.volumeLabel];

        [_noteLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(1);
            make.centerY.equalTo(self.contentView);
            make.width.equalTo(self.contentView).multipliedBy(0.24);
            make.height.equalTo(self.contentView);
        }];
        
        [_priceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(_noteLabel.mas_right).offset(2);
            make.centerY.equalTo(self.contentView);
            make.width.equalTo(self.contentView).multipliedBy(0.36);
            make.height.equalTo(self.contentView);
        }];
        
        [_volumeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(self.contentView);
            make.centerY.equalTo(self.contentView);
            make.width.equalTo(self.contentView).multipliedBy(0.38);
            make.height.equalTo(self.contentView);
        }];
    }
    
    self.noteLabel.adjustsFontSizeToFitWidth = YES;
    self.priceLabel.adjustsFontSizeToFitWidth = YES;
    self.volumeLabel.adjustsFontSizeToFitWidth = YES;

    return self;
}


- (void)setModel:(VVWuDangModel *)model{
    if (_model != model) {
        _model = model;
    }
    
    [self refreshUI:model];
}

- (void)refreshUI:(VVWuDangModel *)model
{
    //    self.dayLabel.text = model.time;
    //    self.monthLabel.text = model.time;
//    self.noteLabel.text = model.;
//    self.priceLabel.text = model.performer;
//    self.volumeLabel.text = model.publisher;
}


#pragma mark - getter


- (UILabel *)noteLabel{
    if (_noteLabel == nil) {
        _noteLabel = [[UILabel alloc] init];
        _noteLabel.textAlignment = NSTextAlignmentLeft;
        _noteLabel.font = [UIFont boldSystemFontOfSize:12];
        _noteLabel.textColor = kRGB(60, 60, 60);
    }
    return _noteLabel;
}

- (UILabel *)priceLabel{
    if (_priceLabel == nil) {
        _priceLabel = [[UILabel alloc] init];
        _priceLabel.textAlignment = NSTextAlignmentCenter;
        _priceLabel.font = [UIFont boldSystemFontOfSize:12];
        _priceLabel.textColor = kRGB(60, 60, 60);
    }
    return _priceLabel;
}


- (UILabel *)volumeLabel{
    if (_volumeLabel == nil) {
        _volumeLabel = [[UILabel alloc] init];
        _volumeLabel.textAlignment = NSTextAlignmentRight;
        _volumeLabel.font = [UIFont boldSystemFontOfSize:12];
        _volumeLabel.textColor = kRGB(60, 60, 60);
    }
    return _volumeLabel;
}


- (void)awakeFromNib {
    [super awakeFromNib];


}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
